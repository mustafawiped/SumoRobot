loadstring(exports.dgs:dgsImportFunction())()

local language = {
        ["Türkçe"] = {
             --Eve Giriş Paneli.
             panelbaslik1 = "Ev Panel",
             evidlang = "● Ev Sıra: ",
             evsahibilang = "● Ev Sahibi: ",
             evdurumlang = "● Ev Durumu: ",
             evoncekisahiplang = "● Ev Önceki Sahibi: ",
             evsatisfiyatlang = "● Ev Satış Fiyatı: ",
             evsatistarihlang = "● Ev Satış Tarihi: ",
             evoncekifiyatlang = "● Ev Önceki Fiyatı: ",
             evkiracisilang = "● Kiracı: ",
             evkirafiyatlang = "● Ev Kira Fiyatı: ",
             evoncekikirafiyatlang = "● Ev Önceki Kira Fiyatı: ",
             evsatinallang = "Satın Al",
             evkiralalang = "Kirala",
             evgirislang = "Giriş Yap",
             evkilitdurumlang = "● Ev Kilit Durumu: ",
             --Ev Yönetim Paneli
             panelbaslik2 = "Hoşgeldin, Ne yapmak istersin?",
             bilgilbllang = "➤ Ev Giriş",
             evegirlang = "Eve Gir",
             evadminlock = "Kilitsiz",
             satiligacikar = "Satılığa Çıkar",
             kiraligacikar = "Kiralığa Çıkar",
             --Ev Oluşturma Paneli
             panelbaslik3 = "Ev Oluşturma Panel",
             listegridcolon1 = "Sıra",
             listegridcolon2 = "sahip",
             listegridcolon3 = "fiyat",
             listegridcolon4 = "içi",
             listegridcolon5 = "kilit",
             listegridcolon6 = "konum",
             evidlbllang = "Ev Sıra :",
             evsahibi = "Ev Sahibi:",
             evsatisfiyatlang2 = "Ev Satış Fiyatı:",
             evkilidiyazisi = "Ev Kilidi:",
             kilitli = "Kilitli",
             kilitsiz = "Kilitsiz",
             evinterioridlang = "Ev Interior ID:",
             evolusturlang = "Oluştur",
             evduzenlelang = "Düzenle",
             evkonumkopyala = "Konumu Kopyala",
             evisillang = "Evi Sil",
             --Evler Paneli
             panelbaslik4 = "Evler",
             evlerlistcolon1 = "Ev Sıra",
             evlerlistcolon2 = "Ev Sahibi",
             evlerlistcolon3 = "Ev Durumu",
             evlerlistcolon4 = "Ev Fiyatı",
             evlerlistcolon5 = "Kira Durumu",
             eveisinlanlang = "Eve Işınlan",
             evlerpanelinikapalang = "Paneli Kapat",
             --Hata & Uyarı Mesajları
             evkonumkopyalandilang = "Seçili evin konumu başarıyla kopyalandı!",
             evsilindilang = "Ev Başarıyla silindi.",
             evinsirasiniguncelleyemezsinlang = "Evin Sırasını Güncelleyemezsin."
        },
        ["İngilizce"] = {
                          --Eve Giriş Paneli.
                          panelbaslik1 = "Panel",
                          evidlang = "● ID: ",
                          evsahibilang = "● Owner: ",
                          evdurumlang = "● Situation: ",
                          evoncekisahiplang = "● Previous Owner: ",
                          evsatisfiyatlang = "● Sale Price: ",
                          evsatistarihlang = "● Sell Date: ",
                          evoncekifiyatlang = "● Previous Price: ",
                          evkiracisilang = "● Tenant: ",
                          evkirafiyatlang = "● Rental Price: ",
                          evoncekikirafiyatlang = "● Previous Rental Price: ",
                          evsatinallang = "Buy",
                          evkiralalang = "Rent to house",
                          evgirislang = "Log In",
                          evkilitdurumlang = "● Lock Situation: ",
                          --Ev Yönetim Paneli
                          panelbaslik2 = "Welcome, What do you want to do?",
                          bilgilbllang = "➤ Transactions",
                          evegirlang = "Login to home",
                          evadminlock = "Unlocked",
                          satiligacikar = "Put up for sale",
                          kiraligacikar = "Put on rent",
                          --Ev Oluşturma Paneli
                          panelbaslik3 = "House Builder Panel",
                          listegridcolon1 = "ID",
                          listegridcolon2 = "Owner",
                          listegridcolon3 = "Price",
                          listegridcolon4 = "Interior",
                          listegridcolon5 = "Lock",
                          listegridcolon6 = "Location",
                          evidlbllang = "House ID :",
                          evsahibi = "House Owner:",
                          evsatisfiyatlang2 = "House Price:",
                          evkilidiyazisi = "Lock:",
                          kilitli = "Locked",
                          kilitsiz = "Unlocked",
                          evinterioridlang = "House Interior:",
                          evolusturlang = "Create",
                          evduzenlelang = "Edit",
                          evkonumkopyala = "Copy Location",
                          evisillang = "Delete House",
                          --Evler Paneli
                          panelbaslik4 = "Houses",
                          evlerlistcolon1 = "Home ID",
                          evlerlistcolon2 = "Home Owner",
                          evlerlistcolon3 = "Home Situation",
                          evlerlistcolon4 = "House Price",
                          evlerlistcolon5 = "Rental Status",
                          eveisinlanlang = "TP to House",
                          evlerpanelinikapalang = "Close",
                          satilikev = "Sale",
                          kiralikev = "For Rent",
                          satilikdegil = "Not for sale",
                          kiralikdegil = "Not for rent",
                          --Hata & Uyarı Mesajları
                          evkonumkopyalandilang = "The Home Location has been copied!",
                          evsilindilang = "The house has been successfully deleted.",
                          evinsirasiniguncelleyemezsinlang = "You cannot update the order of the house."
        }
    }

local dil = "Türkçe"
local id 
sGenislik,sUzunluk = dgsGetScreenSize()
Genislik,Uzunluk = 553,321
X = (sGenislik/2) - (Genislik/2)
Y = (sUzunluk/2) - (Uzunluk/2)

-- Main Menu
mainpanel = dgsCreateWindow(X, Y, Genislik, Uzunluk, language[dil]["panelbaslik1"], false)
dgsWindowSetSizable(mainpanel, false)
dgsSetVisible(mainpanel,false)
dgsWindowSetCloseButtonEnabled(mainpanel,false)

local kapatbtn = dgsCreateButton(527, -25, 26, 25, "X", false, mainpanel)
local font0_Font13 = dgsCreateFont("dosya/Font13.ttf", 13)
local font1_Font13 = dgsCreateFont("dosya/Font13.ttf", 10)
evidlbl = dgsCreateLabel(33, 41, 223, 21, language[dil]["evidlang"], false, mainpanel)
local font2_Font13 = dgsCreateFont("dosya/Font13.ttf", 11)
dgsSetFont(evidlbl, font2_Font13)
evsahibilbl = dgsCreateLabel(33, 10, 223, 21, language[dil]["evsahibilang"], false, mainpanel) 
dgsSetFont(evsahibilbl, font2_Font13)
evdurumlbl = dgsCreateLabel(284, 41, 259, 21, language[dil]["evdurumlang"], false, mainpanel) 
dgsSetFont(evdurumlbl, font2_Font13)
evoncekisahiplbl = dgsCreateLabel(284, 10, 259, 21, language[dil]["evoncekisahiplang"], false, mainpanel)
dgsSetFont(evoncekisahiplbl, font2_Font13)
evsatisfiyatlbl = dgsCreateLabel(33, 72, 223, 21, language[dil]["evsatisfiyatlang"], false, mainpanel)
dgsSetFont(evsatisfiyatlbl, font2_Font13)
evsatistarihlbl = dgsCreateLabel(33, 103, 162, 21, language[dil]["evsatistarihlang"], false, mainpanel)
dgsSetFont(evsatistarihlbl, font2_Font13)
evoncekifiyatlbl = dgsCreateLabel(284, 72, 259, 21, language[dil]["evoncekifiyatlang"], false, mainpanel)
dgsSetFont(evoncekifiyatlbl, font2_Font13)
cizgi3 = dgsCreateLabel(0, 120, 560, 15, "_______________________________________________________", false, mainpanel)
dgsSetFont(cizgi3, font0_Font13)
evkiracisilbl = dgsCreateLabel(33, 148, 223, 21, language[dil]["evkiracisilang"], false, mainpanel)
dgsSetFont(evkiracisilbl, font2_Font13)
evkirafiyatlbl = dgsCreateLabel(33, 176, 223, 21, language[dil]["evkirafiyatlang"], false, mainpanel)
dgsSetFont(evkirafiyatlbl, font2_Font13)
evoncekikirafiyatlbl = dgsCreateLabel(284, 176, 259, 21, language[dil]["evoncekikirafiyatlang"], false, mainpanel)
dgsSetFont(evoncekikirafiyatlbl, font2_Font13)
cizgi5 = dgsCreateLabel(0, 195, 560, 15, "_______________________________________________________", false, mainpanel)
dgsSetFont(cizgi5, font0_Font13)
evisatinalbtn = dgsCreateButton(21, 230, 142, 51, language[dil]["evsatinallang"], false, mainpanel)
dgsSetFont(evisatinalbtn, font1_Font13)
evikiralabtn = dgsCreateButton(385, 230, 142, 51, language[dil]["evkiralalang"], false, mainpanel)
dgsSetFont(evikiralabtn, font1_Font13)
evyonetimibtn = dgsCreateButton(211, 230, 142, 51, language[dil]["evgirislang"], false, mainpanel)
dgsSetFont(evyonetimibtn, font1_Font13)
evkilitdurum = dgsCreateLabel(284, 103, 259, 21, language[dil]["evkilitdurumlang"], false, mainpanel)
dgsSetFont(evkilitdurum, font2_Font13)

Genisliks,Uzunluks = 554,279
Xs = (sGenislik/2) - (Genisliks/2)
Ys = (sUzunluk/2) - (Uzunluks/2)

--Yönetim Panel
adminpanel = dgsCreateWindow(Xs, Ys, Genisliks, Uzunluks, language[dil]["panelbaslik2"], false)
dgsWindowSetSizable(adminpanel, false)
dgsSetVisible(adminpanel,false)
dgsWindowSetCloseButtonEnabled(adminpanel,false)

local kapatbtn2 = dgsCreateButton(527, -25, 26, 25, "X", false, adminpanel)
local font1_Font13 = dgsCreateFont("dosya/Font13.ttf", 13)
local font0_Font13 = dgsCreateFont("dosya/Font13.ttf", 10)
bilgilbls1 = dgsCreateLabel(240, 15, 80, 19, language[dil]["bilgilbllang"], false, adminpanel)
dgsSetFont(bilgilbls1, font1_Font13)
cizgi7 = dgsCreateLabel(0, 30, 554, 15, "_______________________________________________________", false, adminpanel)
dgsSetFont(cizgi7, font1_Font13)
admingirisyapbtn = dgsCreateButton(292, 70, 144, 42, language[dil]["evegirlang"], false, adminpanel)
dgsSetFont(admingirisyapbtn, font0_Font13)
adminevlockbtn = dgsCreateButton(127, 70, 144, 42, language[dil]["evadminlock"], false, adminpanel)
dgsSetFont(adminevlockbtn, font0_Font13)
cizgi9 = dgsCreateLabel(5, 114, 554, 15, "_______________________________________________________", false, adminpanel)
dgsSetFont(cizgi9, font1_Font13)
admintext = dgsCreateEdit(38, 200, 171, 42, "", false, adminpanel)
satiligacikarbtn = dgsCreateButton(237, 200, 144, 42, language[dil]["satiligacikar"], false, adminpanel)
dgsSetFont(satiligacikarbtn, font0_Font13)
kiraligacikarbtn = dgsCreateButton(391, 200, 144, 42, language[dil]["kiraligacikar"], false, adminpanel)
dgsSetFont(kiraligacikarbtn, font0_Font13)

Genislika,Uzunluka = 662,456
Xa = (sGenislik/2) - (Genislika/2)
Ya = (sUzunluk/2) - (Uzunluka/2)
--Oluşturma Panel

createpanel = dgsCreateWindow(Xa, Ya, Genislika, Uzunluka, language[dil]["panelbaslik3"], false)
dgsWindowSetSizable(createpanel, false)
dgsSetVisible(createpanel,false)
dgsWindowSetCloseButtonEnabled(createpanel,false)

listegridlst = dgsCreateGridList(17, 28, 300, 388, false, createpanel)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon1"], 0.2)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon2"], 0.2)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon3"], 0.3)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon4"], 0.3)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon5"], 0.4)
dgsGridListAddColumn(listegridlst, language[dil]["listegridcolon6"], 0.4)
evidlbls = dgsCreateLabel(365, 20, 116, 26, language[dil]["evidlbllang"], false, createpanel)
evidtxt = dgsCreateEdit(450, 10, 172, 31, "", false, createpanel)
evsahiplbl = dgsCreateLabel(365, 65, 56, 26, language[dil]["evsahibi"], false, createpanel)
evsahiptxt = dgsCreateEdit(450, 55, 172, 31, "", false, createpanel)
evsatisfiyatlbl2 = dgsCreateLabel(365, 110, 81, 26, language[dil]["evsatisfiyatlang2"], false, createpanel)
evsatisfiyattxt = dgsCreateEdit(450, 100, 172, 31, "", false, createpanel)
evlocklbl = dgsCreateLabel(365, 155, 81, 26, language[dil]["evkilidiyazisi"], false, createpanel)
evlockcmbox = dgsCreateComboBox(450, 145, 172, 31, "", false, createpanel)
dgsComboBoxAddItem(evlockcmbox,language[dil]["kilitli"])
dgsComboBoxAddItem(evlockcmbox,language[dil]["kilitsiz"])
evinterioridlbl = dgsCreateLabel(365, 200, 81, 26, language[dil]["evinterioridlang"], false, createpanel)
evinterioridtxt = dgsCreateEdit(450, 190, 172, 31, "", false, createpanel)
olusturbtn = dgsCreateButton(491, 250, 137, 43, language[dil]["evolusturlang"], false, createpanel)
duzenlebtn = dgsCreateButton(344, 250, 137, 43, language[dil]["evduzenlelang"], false, createpanel)
konumkopyalabtn = dgsCreateButton(491, 310, 137, 43, language[dil]["evkonumkopyala"], false, createpanel)
evisilbtn = dgsCreateButton(344, 310, 137, 43, language[dil]["evisillang"], false, createpanel)

Genislikc,Uzunlukc = 722,380
Xc = (sGenislik/2) - (Genislikc/2)
Yc = (sUzunluk/2) - (Uzunlukc/2)
--Evler Paneli
evlerpanel = dgsCreateWindow(Xc, Yc, Genislikc, Uzunlukc, language[dil]["panelbaslik4"],false)
dgsWindowSetSizable(evlerpanel, false)
dgsSetVisible(evlerpanel,false)
dgsWindowSetCloseButtonEnabled(evlerpanel,false)

evlerlist = dgsCreateGridList(13, 26, 699, 264, false, evlerpanel)
dgsGridListAddColumn(evlerlist, language[dil]["evlerlistcolon1"], 0.2)
dgsGridListAddColumn(evlerlist, language[dil]["evlerlistcolon2"], 0.2)
dgsGridListAddColumn(evlerlist, language[dil]["evlerlistcolon3"], 0.2)
dgsGridListAddColumn(evlerlist, language[dil]["evlerlistcolon4"], 0.2)
dgsGridListAddColumn(evlerlist, language[dil]["evlerlistcolon5"], 0.2)
eveisinlanbtn = dgsCreateButton(412, 300, 141, 36, language[dil]["eveisinlanlang"], false, evlerpanel)
panelikapatbtn = dgsCreateButton(194, 300, 141, 36, language[dil]["evlerpanelinikapalang"], false, evlerpanel)

addEventHandler("onDgsMouseClickUp",getRootElement(),function()
        if source == panelikapatbtn then
                dgsSetVisible(evlerpanel,false)
                showCursor(false)
        end
        if source == eveisinlanbtn then
                local id = dgsGridListGetItemText(evlerlist, dgsGridListGetSelectedItem(evlerlist), 1)
                if tonumber(id) ~= nil and tonumber(id) >= 1 then
                dgsSetVisible(evlerpanel,false)
                showCursor(false)
                triggerServerEvent("EvSystem:HomeTP",localPlayer,id)
                else
                        if dil == "Türkçe" then
                        outputChatBox("lütfen listeden bir ev seçin.",255,255,255,true)
                        else
                        outputChatBox("Please select a house from the list.",255,255,255,true)
                        end
                end
        end
end)

addEventHandler("onDgsMouseClickUp",getRootElement(),function()
        if source == evisatinalbtn then
                local durum = dgsGetText(evdurumlbl)
                triggerServerEvent("EvSystem:HomeBuying",localPlayer,durum,id)
        end
        if source == evyonetimibtn then
                triggerServerEvent("EvSystem:HomeLogin",localPlayer,id)
        end
        if source == adminevlockbtn then
                triggerServerEvent("EvSystem:HomeLock",localPlayer,id)
        end
        if source == admingirisyapbtn then
                dgsSetVisible(adminpanel,false)
                showCursor(false)
                triggerServerEvent("EvSystem:AdminLogin",localPlayer,id)
        end
        if source == satiligacikarbtn then 
                local sa = dgsGetText(satiligacikarbtn)
                if dil == "İngilizce" then
                        if sa == "Remove From Sale" then
                         sa = "Satıştan Kaldır"
                        elseif sa == "Put up for sale" then
                         sa = "Satışa Çıkar"
                        end
                 end
                local miktar = dgsGetText(admintext)
                triggerServerEvent("EvSystem:HomeSale",localPlayer,id,sa,miktar)
        end
        if source == kiraligacikarbtn then
                local sa = dgsGetText(kiraligacikarbtn)
                if dil == "İngilizce" then
                       if sa == "Rent Out" then
                        sa = "Kiradan At" 
                       elseif sa == "Rent The House" then
                        sa = "Kiralığa Çıkar"
                       end
                end
                local miktar = dgsGetText(admintext)
                triggerServerEvent("EvSystem:HomeSale",localPlayer,id,sa,miktar)
        end
        if source == evikiralabtn then
                triggerServerEvent("EvSystem:HomeRent",localPlayer,id)
        end
        if source == konumkopyalabtn then
                local konum = dgsGridListGetItemText(listegridlst, dgsGridListGetSelectedItem(listegridlst), 6)
                if konum ~= nil then
                        setClipboard(tostring(konum));
                        outputChatBox(language[dil]["evkonumkopyalandilang"])
                end
        end
end)

addEventHandler("onDgsMouseClickUp",getRootElement(),function()
        if source == listegridlst then
                local sel = dgsGridListGetSelectedItem(listegridlst)
		if sel ~= -1 then 
                        dgsSetText(evidtxt,dgsGridListGetItemText(listegridlst,sel,1))
                        dgsSetText(evsahiptxt,dgsGridListGetItemText(listegridlst,sel,2))
                        dgsSetText(evsatisfiyattxt,dgsGridListGetItemText(listegridlst,sel,3))
                        dgsSetText(evinterioridtxt,dgsGridListGetItemText(listegridlst,sel,4))
                        if dil == "Türkçe" then
                                if tostring(dgsGridListGetItemText(listegridlst,sel,5)) == "Kilitli" then
                                        dgsComboBoxSetSelectedItem(evlockcmbox,1)
                                else
                                        dgsComboBoxSetSelectedItem(evlockcmbox,2)
                                end
                        else
                                if tostring(dgsGridListGetItemText(listegridlst,sel,5)) == "Locked" then
                                        dgsComboBoxSetSelectedItem(evlockcmbox,1)
                                else
                                        dgsComboBoxSetSelectedItem(evlockcmbox,2)
                                end
                        end
                else
                        dgsSetText(evidtxt,"")
                        dgsSetText(evsahiptxt,"")
                        dgsSetText(evsatisfiyattxt,"")
                        dgsSetText(evinterioridtxt,"")
                        dgsComboBoxSetSelectedItem(evlockcmbox,-1)
		end
        end
        if source == olusturbtn then
                local evid = dgsGetText(evidtxt)
                local evsahip = dgsGetText(evsahiptxt)
                local evsatisfiyat = dgsGetText(evsatisfiyattxt)
                secili = dgsComboBoxGetSelectedItem(evlockcmbox)
                local evlock = dgsComboBoxGetItemText(evlockcmbox,secili)
                if dil == "İngilizce" then
                        if evlock == "Locked" then
                                evlock = "Kilitli"
                        elseif evlock == "Unlocked" then
                                evlock = "Kilitsiz"
                        end
                end
                local evinterior = dgsGetText(evinterioridtxt)
                triggerServerEvent("EvSystem:EvOlustur",localPlayer,evsahip,evinterior,evsatisfiyat,evlock,evid)
                dgsSetVisible(createpanel,false)
                showCursor(false)
                dgsSetInputEnabled(false)
        end
        if source == evisilbtn then
                local ides = dgsGetText(evidtxt)
                if tonumber(ides) <= 0 then outputChatBox("[TR] Ev Seçin. [ENG] Pls select house") return end
                triggerServerEvent("EvSystem:EvSil",localPlayer,tostring(ides))
                dgsSetVisible(createpanel,false)
                showCursor(false)
                dgsSetInputEnabled(false)
                outputChatBox(language[dil]["evsilindilang"])
        end
        if source == duzenlebtn then
                local sel = dgsGridListGetSelectedItem(listegridlst)
                local id = dgsGridListGetItemText(listegridlst,sel,1)
                if tonumber(id) >= 1 then 
                        local evid = dgsGetText(evidtxt)
                        local evsahip = dgsGetText(evsahiptxt)
                        local evsatisfiyat = dgsGetText(evsatisfiyattxt)
                        secili = dgsComboBoxGetSelectedItem(evlockcmbox)
                        local evlock = dgsComboBoxGetItemText(evlockcmbox,secili)
                        if dil == "İngilizce" then
                                if evlock == "Locked" then
                                        evlock = "Kilitli"
                                elseif evlock == "Unlocked" then
                                        evlock = "Kilitsiz"
                                end
                        end
                        local evinterior = dgsGetText(evinterioridtxt)
                        triggerServerEvent("EvSystem:Update",localPlayer,evid,evsahip,evsatisfiyat,evlock,evinterior)
                        dgsSetVisible(createpanel,false)
                        showCursor(false)
                        dgsSetInputEnabled(false)
                else
                        outputChatBox(language[dil]["evsirasiniguncelleyemezsinlang"])
                end
        end
end)

addEventHandler("onDgsMouseClickUp",getRootElement(),function()
        if source == kapatbtn then
                dgsSetVisible(mainpanel,false)
                showCursor(false)
        end
        if source == kapatbtn2 then
                dgsSetVisible(adminpanel,false)
                showCursor(false)
        end
        if source == evyonetimibtn then
                triggerServerEvent("EvSystem:HomeLogin",localPlayer,id)
        end
end)

addEvent("EvSystem:Homes",true)
addEventHandler("EvSystem:Homes",root,function(veriler)
        dgsGridListClear(evlerlist)
        for i,v in pairs(veriler) do
                if dil == "Türkçe" then
                        if v["evdurum"] == "Satılık" or v["evkiradurum"] == "Kiralık" then
                                row = dgsGridListAddRow(evlerlist) 
                                dgsGridListSetItemText(evlerlist,row,1,v["id"])
                                dgsGridListSetItemText(evlerlist,row,2,v["evsahip"])
                                dgsGridListSetItemText(evlerlist,row,3,v["evdurum"])
                                dgsGridListSetItemText(evlerlist,row,4,v["evfiyat"])
                                dgsGridListSetItemText(evlerlist,row,5,v["evkiradurum"])
                                dgsGridListSetItemColor( evlerlist, row, 1, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 2, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 3, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 4, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 5, 0, 255, 0 )
                        else
                                row = dgsGridListAddRow(evlerlist) 
                                dgsGridListSetItemText(evlerlist,row,1,v["id"])
                                dgsGridListSetItemText(evlerlist,row,2,v["evsahip"])
                                dgsGridListSetItemText(evlerlist,row,3,v["evdurum"])
                                dgsGridListSetItemText(evlerlist,row,4,v["evfiyat"])
                                dgsGridListSetItemText(evlerlist,row,5,v["evkiradurum"])
                        end
                else
                        if v["evdurum"] == "Satılık" or v["evkiradurum"] == "Kiralık" then
                                row = dgsGridListAddRow(evlerlist) 
                                dgsGridListSetItemText(evlerlist,row,1,v["id"])
                                dgsGridListSetItemText(evlerlist,row,2,v["evsahip"])
                                if v["evdurum"] == "Satılık" then
                                dgsGridListSetItemText(evlerlist,row,3,language[dil]["satilikev"])
                                else
                                dgsGridListSetItemText(evlerlist,row,3,language[dil]["kiralikev"])
                                end    
                                dgsGridListSetItemText(evlerlist,row,4,v["evfiyat"])
                                dgsGridListSetItemText(evlerlist,row,5,v["evkiradurum"])
                                dgsGridListSetItemColor( evlerlist, row, 1, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 2, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 3, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 4, 0, 255, 0 )
                                dgsGridListSetItemColor( evlerlist, row, 5, 0, 255, 0 )
                        else
                                row = dgsGridListAddRow(evlerlist) 
                                dgsGridListSetItemText(evlerlist,row,1,v["id"])
                                dgsGridListSetItemText(evlerlist,row,2,v["evsahip"])
                                if v["evdurum"] == "Satılık Değil" then
                                        dgsGridListSetItemText(evlerlist,row,3,language[dil]["satilikdegil"])
                                else
                                        dgsGridListSetItemText(evlerlist,row,3,language[dil]["kiralikdegil"])
                                end  
                                dgsGridListSetItemText(evlerlist,row,4,v["evfiyat"])
                                dgsGridListSetItemText(evlerlist,row,5,v["evkiradurum"])
                        end
                end
        end
        dgsSetVisible(evlerpanel,true)
        showCursor(true)
end)

addEvent("EvSystem:AdminPanelOpen",true)
addEventHandler("EvSystem:AdminPanelOpen",root,function(veriler)
        local durum = dgsGetVisible(createpanel)
        if durum then
        dgsSetVisible(createpanel,false)
        dgsSetInputEnabled(false)
        showCursor(false)
        else
        dgsGridListClear(listegridlst)
        for i,v in pairs(veriler) do
                local veri = fromJSON(v["evxyz"])
                local x,y,z = unpack(veri)
                row = dgsGridListAddRow(listegridlst) 
                dgsGridListSetItemText(listegridlst,row,1,v["id"])
                dgsGridListSetItemText(listegridlst,row,2,v["evsahip"])
                dgsGridListSetItemText(listegridlst,row,3,v["evfiyat"])
                dgsGridListSetItemText(listegridlst,row,4,v["evinterior"])
                if dil == "Türkçe" then
                dgsGridListSetItemText(listegridlst,row,5,v["evkilitdurum"])
                else
                        if v["evkilitdurum"] == "Kilitli" then
                                dgsGridListSetItemText(listegridlst,row,5,"Locked")
                        else
                                dgsGridListSetItemText(listegridlst,row,5,"Unlocked")
                        end
                end
                dgsGridListSetItemText(listegridlst,row,6,tostring(x)..", "..tostring(y)..", "..tostring(z))
        end
        dgsSetVisible(createpanel,true)
        showCursor(true)
        dgsSetInputEnabled(true)
        end
end)

addEvent("EvSystem:LoginPanel",true)
addEventHandler("EvSystem:LoginPanel",root,function(veriler)
        for i,v in pairs(veriler) do 
                dgsSetText(evidlbl,language[dil]["evidlang"]..v["id"])
                dgsSetText(evsahibilbl,language[dil]["evsahibilang"]..v["evsahip"])
                if dil == "İngilizce" then
                        if v["evdurum"] == "Satılık" then
                                dgsSetText(evdurumlbl, language[dil]["evdurumlang"].."Sale")
                        elseif v["evdurum"] == "Satılık Değil" then
                                dgsSetText(evdurumlbl, language[dil]["evdurumlang"].."Not for sale")
                        elseif v["evdurum"] == "Kiralık" then
                                dgsSetText(evdurumlbl, language[dil]["evdurumlang"].."For Rent")
                        elseif v["evdurum"] == "Kirada" then
                                dgsSetText(evdurumlbl, language[dil]["evdurumlang"].."On Rent")
                        end
                else
                dgsSetText(evdurumlbl, language[dil]["evdurumlang"]..v["evdurum"])
                end
                dgsSetText(evoncekisahiplbl,language[dil]["evoncekisahiplang"]..tostring(v["evoncekisahip"] or "Sunucu"))
                dgsSetText(evsatisfiyatlbl, language[dil]["evsatisfiyatlang"]..v["evfiyat"])
                dgsSetText(evsatistarihlbl,language[dil]["evsatistarihlang"]..tostring(v["evsatistarih"] or "-"))
                dgsSetText(evoncekifiyatlbl,  language[dil]["evoncekifiyatlang"]..tostring(v["evoncekifiyat"] or "-"))
                dgsSetText(evkiracisilbl,language[dil]["evkiracisilang"]..tostring(v["evkiraci"] or "-"))
                dgsSetText(evkirafiyatlbl,language[dil]["evkirafiyatlang"]..tostring(v["evkirafiyat"] or "-"))
                dgsSetText(evoncekikirafiyatlbl, language[dil]["evoncekikirafiyatlang"]..tostring(v["evoncekikirafiyat"] or "-"))
                if dil == "İngilizce" then
                        if v["evkilitdurum"] == "Kilitli" then
                                dgsSetText(evkilitdurum,"Lock Situation: ".."Locked") 
                        else
                                dgsSetText(evkilitdurum,"Lock Situation: ".."Unlocked")  
                        end
                else
		dgsSetText(evkilitdurum,language[dil]["evkilitdurumlang"]..tostring(v["evkilitdurum"] or "Kilitsiz"))
                end
                if dil == "Türkçe" then
                        if tostring(v["evkiradurum"]) == "Kirada" or v["evkiradurum"] == "Kiralık" then
                                dgsSetText(kiraligacikarbtn,"Kiradan At")
                        else
                                dgsSetText(kiraligacikarbtn,"Kiralığa Çıkar")
                        end
                else
                        if tostring(v["evkiradurum"]) == "Kirada" or v["evkiradurum"] == "Kiralık" then
                                dgsSetText(kiraligacikarbtn,"Rent Out")
                        else
                                dgsSetText(kiraligacikarbtn,"Rent The House")
                        end
                end
                id = tonumber(v["id"])
        end
        dgsSetVisible(mainpanel,true)
        showCursor(true)
end)

addEvent("EvSystem:AdminPanelAc",true)
addEventHandler("EvSystem:AdminPanelAc",root,function(durum,evkilitdurum,satisdurum,kiradurum)
        if durum == "Sahip" then
                if dil == "İngilizce" then
                        if evkilitdurum == "Kilitli" then
                        dgsSetText(adminevlockbtn,"Lock: ".."Locked") 
                        else
                        dgsSetText(adminevlockbtn,"Lock: ".."Unlocked")  
                        end
                        if satisdurum == "Satılık" then dgsSetText(satiligacikarbtn,"Remove From Sale") end
                        if satisdurum == "Satılık Değil" then dgsSetText(satiligacikarbtn,"Put up for sale") end
                        if kiradurum == "Kiralık" then dgsSetText(kiraligacikarbtn,"Rent Out") end
                        if kiradurum == "Kiralık Değil" then dgsSetText(kiraligacikarbtn,"Rent The House") end
                else
                        dgsSetText(adminevlockbtn,"Ev Kilidi: "..evkilitdurum) 
                        if satisdurum == "Satılık" then dgsSetText(satiligacikarbtn,"Satıştan Kaldır") end
                        if satisdurum == "Satılık Değil" then dgsSetText(satiligacikarbtn,"Satışa Çıkar") end
                        if kiradurum == "Kiralık" then dgsSetText(kiraligacikarbtn,"Kiradan At") end
                        if kiradurum == "Kiralık Değil" then dgsSetText(kiraligacikarbtn,"Kiralığa Çıkar") end
                end
                dgsSetVisible(mainpanel,false)
                dgsSetEnabled(satiligacikarbtn,true)
                dgsSetEnabled(kiraligacikarbtn,true)
                dgsSetEnabled(admintext,true)
                dgsSetVisible(adminpanel,true)
                showCursor(true)
        elseif durum == "Kiracı" then
                if dil == "İngilizce" then
                        if evkilitdurum == "Kilitli" then
                        dgsSetText(adminevlockbtn,"Lock: ".."Locked") 
                        else
                        dgsSetText(adminevlockbtn,"Lock: ".."Unlocked")  
                        end
                        if satisdurum == "Satılık" then dgsSetText(satiligacikarbtn,"Remove From Sale") end
                        if satisdurum == "Satılık Değil" then dgsSetText(satiligacikarbtn,"Put up for sale") end
                        if kiradurum == "Kiralık" then dgsSetText(kiraligacikarbtn,"Rent Out") end
                        if kiradurum == "Kiralık Değil" then dgsSetText(kiraligacikarbtn,"Rent The House") end
                else
                        dgsSetText(adminevlockbtn,"Ev Kilidi: "..evkilitdurum) 
                        if satisdurum == "Satılık" then dgsSetText(satiligacikarbtn,"Satıştan Kaldır") end
                        if satisdurum == "Satılık Değil" then dgsSetText(satiligacikarbtn,"Satışa Çıkar") end
                        if kiradurum == "Kiralık" then dgsSetText(kiraligacikarbtn,"Kiradan At") end
                        if kiradurum == "Kiralık Değil" then dgsSetText(kiraligacikarbtn,"Kiralığa Çıkar") end
                end
                dgsSetVisible(mainpanel,false)
                dgsSetEnabled(satiligacikarbtn,false)
                dgsSetEnabled(kiraligacikarbtn,false)
                dgsSetEnabled(admintext,false)
                dgsSetVisible(adminpanel,true)
                showCursor(true)
        end
end)

addEvent("EvSystem:DunyaninEnGereksizEventi",true)
addEventHandler("EvSystem:DunyaninEnGereksizEventi",root,function(ss)
        if ss == "kiltle" then
                if dil == "İngilizce" then
                        dgsSetText(adminevlockbtn,"Lock: Locked")
                else
                dgsSetText(adminevlockbtn,"Ev Kilidi: Kilitli")
                end
        elseif ss == "ac" then
                if dil == "İngilizce" then
                        dgsSetText(adminevlockbtn,"Lock: Unocked")
                else
                dgsSetText(adminevlockbtn,"Ev Kilidi: Kilitsiz")
                end
        end
end)

addEvent("EvSystem:PanelKapa",true)
addEventHandler("EvSystem:PanelKapa",getRootElement(),function()
        dgsSetVisible(mainpanel,false)
        showCursor(false)
end)

addEvent("EvSystem:PanelKapa2",true)
addEventHandler("EvSystem:PanelKapa2",getRootElement(),function()
        dgsSetVisible(adminpanel,false)
        showCursor(false)
end)

function math.round(number, des, method)
        des = des or 0
        local factor = 10 ^ des
        if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
        else return tonumber(("%."..des.."f"):format(number)) end
end
