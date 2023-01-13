db = dbConnect("sqlite","dosya/results.db")

local evsiniri = 2
local yetkili = "Console"

local evler = {}
local markerlar = {}
local alans
local evid
local evkiracilari = { }
local isinlananlar = { }
local onceki = { }
local px,py,pz
local dil = "Türkçe"

local interiorlar =
	    {
            [1] = {2495.944, -1692.495, 1014.742, 180, 3},
            [2] = {2333.110, -1077.100, 1049.023, 0, 6},
            [3] = {2196.852, -1204.260, 1049.023, 90, 6},
            [4] = {2308.790, -1212.880, 1049.023, 0, 6},
            [5] = {2269.883, -1210.548, 1047.563, 90, 10},
            [6] = {1299.082, -796.762, 1084.008, 0, 5},
            [7] = {2324.354, -1149.102, 1050.710, 0, 12}, 
            [8] = {223.040, 1287.260, 1082.141, 0, 1}, 
            [9] = {226.901, 1239.824, 1082.942, 90, 2},
            [10] = {447.036, 1397.600, 1084.305, 0, 2}, 
            [11] = {491.227, 1398.246, 1081.016, 0, 2},
            [12] = {235.296, 1187.134, 1080.258, 0, 3}, 
            [13] = {-260.600, 1456.620, 1084.367, 0, 4},
            [14] = {221.856, 1140.510, 1082.609, 0, 4},
            [15] = {261.183, 1284.296, 1080.258, 0, 4},
            [16] = {22.829, 1403.676, 1084.430, 0, 5}, 
            [17] = {226.649, 1114.359, 1080.995, 270, 5}, 
            [18] = {140.180, 1366.580, 1083.859, 0, 5},
            [19] = {234.117, 1063.869, 1084.212, 0, 6}, 
            [20] = {-68.463, 1352.098, 1080.211, 0, 6},
            [21] = {-42.580, 1405.610, 1084.430, 0, 8},
            [22] = {82.950, 1322.440, 1083.866, 0, 9},
            [23] = {260.746, 1237.463, 1084.258, 0, 9},
            [24] = {23.873, 1340.280, 1084.375, 0, 10},
            [25] = {-283.550, 1470.980, 1084.375, 90, 15},
            [26] = {327.910, 1477.916, 1084.438, 0, 15},
            [27] = {376.704, 1417.262, 1081.328, 90, 15},
            [28] = {386.824, 1471.668, 1080.195, 90, 15},
            [29] = {294.935, 1472.324, 1080.258, 0, 15}, 
            [30] = {2468.599, -1698.334, 1013.508, 90, 2},
            [31] = {2807.620, -1174.100, 1025.570, 0, 8}, 
            [32] = {2217.540, -1076.290, 1050.484, 90, 1},
            [33] = {2233.747, -1115.108, 1050.883, 0, 5},
	    }

local language = {
    ["Türkçe"] = {
        evolusturuldu = "Başarıyla Ev Oluşturuldu.",
        evguncellendi = "Başarıyla Ev Bilgiler Güncellendi.",
        kilithatasi = "#ffffffEv #ff7f00Kilitli olduğu için, #ffffffeve giriş yapamazsınız.",
        kilitacildi = "Evin Kilidi başarıyla açıldı.",
        kilitlendi = "Ev başarıyla kilitlendi.",
        evsatinalmahatasi1 = "#ffffffMaalesef #ff7f00Ev sana ait olduğu için, #ffffffevi satın alamadın.",
        evsatinalmahatasi2 = "#ffffffMaalesef #ff7f00Yeterli Paranız olmadığı için, #ffffffevi satın alamadınız.",
        evsatinalmahatasi3 = "#ffffffMaalesef #ff7f00Ev satılık olmadığı için, #ffffffevi satın alamadınız.",
        evsatinalmahatasi4 = "#ffffffMaalesef #ff7f00Ev sınırını aştığınız için, #ffffffevi satın alamadınız. Ev Sınırı: #ff7f00",
        evsatinalmabildiri = "#ffffffBaşarıyla #ff7f00#",
        evsatinalmabildiri2 = " Sıra #ffffff'ya sahip evi satın aldınız!",
        satiligacikarmabildiri = "#FFFFFFEvinizi Başarıyla #ff7f00Satılıktan Çıkardınız!",
        satisacikarmahata1 = "#ffffffEvinizi satmak için #ff7f00bir değer #ffffffgirmelisiniz.",
        satisacikarmahata2 = "#ffffffEvinizi #ff7f000 veya daha düşük bir fiyata #ffffffsatamazsınız.",
        satisacikarmabildiri = "#FFFFFFEvinizi Başarıyla #ff7f00Satılığa Çıkardınız!",
        kiraligacikarmahata1 = "#ffffffEvinizi kiralamak için #ff7f00bir değer #ffffffgirmelisiniz.",
        kiraligacikarmahata2 = "#ffffffEvinizi #ff7f000 veya daha düşük bir fiyata #ffffffkiralayamazsınız.",
        kiraligacikarmabildiri = "#FFFFFFEvinizi Başarıyla #ff7f00Kiralığa Çıkardınız!",
        kiradankaldirmabildiri = "#FFFFFFEvinizi Başarıyla #ff7f00Kiradan Kaldırdınız.",
        kiradancikmabildiri = "Kiraladığınız evden, başarıyla çıktınız. Artık kiracı değilsiniz.",
        kiradancikmahata1 = "Herhangi bir evi kiralamadığınız için, herhangi bir işlem yapılmadı.",
        kiralamahata1 = "#FFFFFFEv zaten, #ff7f00sana ait. #ffffffKendi evini kiralayamazsın.",
        kiralamahata2 = "#FFFFFFZaten #ff7f00Başka bir evi #ffffffkiraladınız.",
        kiralamahata3 = "#FFFFFFEvi kiralamak için, #ff7f00Yeterli Paranız yok.",
        kiralamahata4 = "#FFFFFFEv zaten, #ff7f00başka biri tarafından #ffffffkiralanmış.",
        kiralamahata5 = "#FFFFFFBu ev, şuanda #ff7f00kirada değil.#ffffff kiralamak için, ev sahibine ulaşın.",
        kiragunudoldu = "Kiraladığınız evin süresi dolduğu için ev sizden geri alındı.",
        kirahabercisi1 = "Kiraladığınız evin, süresinin bitme tarihi ",
        kirahabercisi2 = " 'dür..",
    },
    ["İngilizce"] = {
        evolusturuldu = "Successfully Created House",
        evguncellendi = "Successfully Updated House Information.",
        kilithatasi = "#ffffffAs the house #ff7f00is locked, #ffffffyou cannot enter the house.",
        kilitacildi = "The house has been unlocked successfully.",
        kilitlendi = "The house has been successfully locked.",
        evsatinalmahatasi1 = "#ffffffUnfortunately#ff7f00 Because the house belongs to you, #ffffffyou cannot buy the house.",
        evsatinalmahatasi2 = "You couldn't buy the house because you didn't have enough money.",
        evsatinalmahatasi3 = "You could not buy the house because the house is not for sale.",
        evsatinalmahatasi4 = "You have exceeded the home purchase limit. House Limit: #ff7f00",
        evsatinalmabildiri = "#ffffffSuccessfully #ff7f00#",
        evsatinalmabildiri2 = " ID #ffffffYou bought it.",
        satiligacikarmabildiri = "You have successfully removed the house from sale.",
        satisacikarmahata1 = "Please enter the sales amount.",
        satisacikarmahata2 = "You cannot sell the house for 0 or less.",
        satisacikarmabildiri = "You have successfully put your house up for sale.",
        kiraligacikarmahata1 = "To rent the house, you must enter an amount.",
        kiraligacikarmahata2 = "You cannot rent the house for 0 or less.",
        kiraligacikarmabildiri = "You have successfully rented the house.",
        kiradankaldirmabildiri = "You have taken the house out of rent.",
        kiradancikmabildiri = "You have successfully left the house you rented. You are no longer a tenant.",
        kiradancikmahata1 = "Since you did not rent any house, no action was taken.",
        kiralamahata1 = "The house already belongs to you. You cannot rent your own house.",
        kiralamahata2 = "You have already rented another house.",
        kiralamahata3 = "You don't have enough money to rent the house.",
        kiralamahata4 = "This house has already been rented by someone else.",
        kiralamahata5 = "The house is not currently for rent, contact the landlord to rent it.",
        kiragunudoldu = "The house was taken back from you because the house you rented has expired.",
        kirahabercisi1 = "The house you rented on ",
        kirahabercisi2 = "expires.",
    }
}

addEventHandler("onResourceStart",root,function()
    dbQuery(evleriolustur,db,"SELECT * FROM veriler")
end)

function evleriolustur(veriler)
    result = dbPoll(veriler,0)
    for i,v in pairs(result) do
        if tostring(v["evkiraci"]) ~= "-" then
            table.insert(evkiracilari,v["evkiraci"])
        end
        local lokasyon = fromJSON(v["evxyz"])
        local x,y,z = unpack(lokasyon)
        local evlogo
        if v["evdurum"] == "Satılık" or v["evkiradurum"] == "Kiralık" then
            evlogo = createPickup ( x, y, z, 3, 1273, 0 )
        else
            evlogo = createPickup ( x, y, z, 3, 1272, 0 )
        end
		local evalan = createColTube ( x, y, z - 1, 0.9, 2 )
        local evid = v.id
        table.insert( evler, {evlogo,evalan,evid} )
        setElementData(evalan,"EvSystem:ID",evid)
        addEventHandler ( "onColShapeHit", evalan, evegiris )
    end
end
local tepki

function evegiris(oyuncu)
    evid = getElementData(source,"EvSystem:ID")
    tepki = oyuncu
    dbQuery(gonder,db,"SELECT * FROM veriler WHERE id = ?",tonumber(evid))
end

function gonder(veriler)
    local result = dbPoll(veriler,0)
    triggerClientEvent(tepki,"EvSystem:LoginPanel",tepki,result)
end

addEvent("EvSystem:EvOlustur",true)
addEventHandler("EvSystem:EvOlustur",root,function(evsahibi,evinterior,satisfiyat,kilits,ids)
    local x,y,z = getElementPosition(source)
    local tablo = {tostring(x),tostring(y),tostring(z)}
    local konum = toJSON(tablo)
    dbExec(db,"INSERT INTO veriler(id,evsahip,evinterior,evxyz,evfiyat,evoncekifiyat,evdurum,evoncekisahip,evsatistarih,evkilitdurum,evkiradurum,evkiraci,evkirafiyat,evoncekikirafiyat,evkira) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",ids,evsahibi,evinterior,konum,satisfiyat,"-","Satılık","Sunucu","-",kilits,"Kiralık Değil","-","-","-","-")
    local evlogo = createPickup ( x, y, z, 3, 1273, 0 )
    local evalan = createColTube ( x, y, z - 1, 0.9, 2 )
    local result = dbPoll(dbQuery(db,"SELECT * FROM veriler WHERE evsahip = ?",evsahibi),-1)
    setElementData(evalan,"EvSystem:ID",ids)
    table.insert( evler, {evlogo,evalan,ids} )
    addEventHandler ( "onColShapeHit", evalan, evegiris )
    outputChatBox(language[dil]["evolusturuldu"],source,255,255,255,true)
end)

addEvent("EvSystem:EvSil",true)
addEventHandler("EvSystem:EvSil",root,function(id)
    dbExec(db,"DELETE FROM veriler WHERE id = ?",tonumber(id))
    for i,v in pairs(evler) do
        if tostring(v[3]) == tostring(id) then
            destroyElement(v[1])
            destroyElement(v[2]) 
        end
    end
end)

addEvent("EvSystem:Update",true)
addEventHandler("EvSystem:Update",root,function(id,evsahip,evsatisfiyat,evlock,evinterior)
    dbExec(db,"UPDATE veriler SET evsahip = ?, evfiyat = ?, evkilitdurum = ?, evinterior = ? WHERE id = ?",evsahip,evsatisfiyat,evlock,evinterior,id)
    outputChatBox(language[dil]["evguncellendi"],source,255,255,255,true)
end)

addEvent("EvSystem:HomeLogin",true)
addEventHandler("EvSystem:HomeLogin",root,function(id)
    local hesap = getAccountName(getPlayerAccount(source))
    local result = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    local evsahibi
    local evkiracisi
    local evkiliti
	local dimension
    local evint
    local satilikdurum
    local varmi = false
    local kiradurum
    for i,v in pairs(result) do
        if tonumber(id) == tonumber(v.id) then
            evsahibi = tostring(v.evsahip)
            evkiracisi = tostring(v.evkiraci)
            evkiliti = tostring(v.evkilitdurum)
            evint = v.evinterior
			dimension = v.id
            satilikdurum = v.evdurum
            kiradurum = v.evkiradurum
        end
    end
    if evkiliti == "Kilitli" then
        if tostring(hesap) == tostring(evsahibi) then
            local durum = "Sahip"
            triggerClientEvent(source,"EvSystem:AdminPanelAc",source,durum,evkiliti,satilikdurum,kiradurum)
        elseif tostring(hesap) == tostring(evkiracisi) then
            local durum = "Kiracı"
            triggerClientEvent(source,"EvSystem:AdminPanelAc",source,durum,evkiliti,satilikdurum,kiradurum)
        else
            outputChatBox(language[dil]["kilithatasi"],source,255,255,255,true)
        end
    elseif evkiliti == "Kilitsiz" then
        if tostring(hesap) == tostring(evsahibi) then
            local durum = "Sahip"
            triggerClientEvent(source,"EvSystem:AdminPanelAc",source,durum,evkiliti,satilikdurum,kiradurum)
            elseif tostring(hesap) == tostring(evkiracisi) then
            local durum = "Kiracı"
            triggerClientEvent(source,"EvSystem:AdminPanelAc",source,durum,evkiliti,satilikdurum,kiradurum)
         else
            setElementFrozen( source, false );
            fadeCamera( source, false );
            toggleAllControls( source, false );
            hesapa = getPlayerAccount(source)
            setAccountData(hesapa,"EvSystem:Giris","true")
            local evid = tonumber(evint)
            for i,v in pairs(markerlar) do
                if v[1] == dimension then
                    varmi = true
                end
            end
            if varmi ~= true then
            local markersasd = createMarker ( interiorlar[evint][1], interiorlar[evint][2], interiorlar[evint][3]-1, "cylinder", 1.2, 255, 127, 0, 170 )
            addEventHandler("onMarkerHit",markersasd,evdencikis)
            setElementInterior( markersasd, interiorlar[evid][5])
            setElementDimension(markersasd,dimension)
            table.insert( markerlar,{dimension,markersasd})
            end
            triggerClientEvent(source,"EvSystem:PanelKapa",source)
            setTimer( function( player )
              if getPedOccupiedVehicle( player ) then removePedFromVehicle( player ) end
                px,py,pz = getElementPosition(player)
                setElementInterior( player, interiorlar[evid][5], interiorlar[evid][1], interiorlar[evid][2], interiorlar[evid][3])
                setElementDimension(player, tonumber(dimension))
                toggleAllControls( player, true );
                fadeCamera( player, true );
            end, 1200, 1, client, t );
            setTimer(function()
                setAccountData(hesapa,"EvSystem:Giris","false")
            end,2000,1,client,t)
        end
    end
end)

function evdencikis(oyuncu)
    if getAccountData(getPlayerAccount(oyuncu),"EvSystem:Giris") == "false" then
    if getElementInterior(oyuncu) > 0 then
        toggleAllControls(oyuncu,false)
        fadeCamera(oyuncu,false)
        setTimer(function()
            setElementDimension(oyuncu,0)
            setElementInterior( oyuncu, 0,px,py,pz)
            toggleAllControls(oyuncu,true)
            fadeCamera(oyuncu,true)
        end, 1200,1,client,t)
        end
    end
end

addEvent("EvSystem:AdminLogin",true)
addEventHandler("EvSystem:AdminLogin",root,function(iad)
    local result = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    local evid
	local dimension
    local evint
    for i,v in pairs(result) do
        if tonumber(iad) == tonumber(v.id) then
            evint = v.evinterior
			dimension = v.id
            evid = v.id
        end
    end
    setElementFrozen( source, false );
    fadeCamera( source, false );
    toggleAllControls( source, false );
    hesapa = getPlayerAccount(source)
    setAccountData(hesapa,"EvSystem:Giris","true")
    local evid = tonumber(evint)
    for i,v in pairs(markerlar) do
        if v[1] == dimension then
            varmi = true
        end
    end
    if varmi ~= true then
    local markersasd = createMarker ( interiorlar[evint][1], interiorlar[evint][2], interiorlar[evint][3]-1, "cylinder", 1.2, 255, 127, 0, 170 )
    addEventHandler("onMarkerHit",markersasd,evdencikis)
    setElementInterior( markersasd, interiorlar[evid][5])
    setElementDimension(markersasd,dimension)
    table.insert( markerlar,{dimension,markersasd})
    end
    triggerClientEvent(source,"EvSystem:PanelKapa",source)
    setTimer( function( player )
      if getPedOccupiedVehicle( player ) then removePedFromVehicle( player ) end
        px,py,pz = getElementPosition(player)
        setElementInterior( player, interiorlar[evid][5], interiorlar[evid][1], interiorlar[evid][2], interiorlar[evid][3])
        setElementDimension(player, tonumber(dimension))
        toggleAllControls( player, true );
        fadeCamera(player,true);
    end, 1200, 1, client, t );
    setTimer(function()
        setAccountData(hesapa,"EvSystem:Giris","false")
    end,2000,1,client,t)
end)

addEvent("EvSystem:HomeLock",true)
addEventHandler("EvSystem:HomeLock",root,function(id)
    local results = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    local kilitdurum
    for i,v in pairs(results) do
        if tostring(id) == tostring(v.id) then
            kilitdurum = v.evkilitdurum
        end
    end
    if tostring(kilitdurum) == "Kilitli" then
        dbExec(db,"UPDATE veriler SET evkilitdurum = ? WHERE id = ?","Kilitsiz",id)
        outputChatBox(language[dil]["kilitacildi"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:DunyaninEnGereksizEventi",source,"ac")
    end
    if tostring(kilitdurum) == "Kilitsiz" then
        dbExec(db,"UPDATE veriler SET evkilitdurum = ? WHERE id = ?","Kilitli",id)
        outputChatBox(language[dil]["kilitlendi"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:DunyaninEnGereksizEventi",source,"kiltle")
    end
end)

addCommandHandler("evolustur",function(oyuncu,cmd)
    local hesap = getAccountName(getPlayerAccount(oyuncu))
    if isObjectInACLGroup("user."..hesap, aclGetGroup(tostring(yetkili))) then 
        local veriler = dbPoll(dbQuery(db,"SELECT * FROM veriler ORDER BY id ASC"),-1)
        triggerClientEvent(oyuncu,"EvSystem:AdminPanelOpen",oyuncu,veriler)
    end
end)

addEvent("EvSystem:HomeBuying",true)
addEventHandler("EvSystem:HomeBuying",root,function(durum,id)
    local hesap = getAccountName(getPlayerAccount(source))
    local evadedi = 0
    local oncekievsahip
    local evfiyat
    local money = getElementData(source, "banka:para") or 0
    local evdurumu
    local result = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    for i,v in pairs(result) do 
        if id == v["id"] then
            oncekievsahip = v["evsahip"]
            evfiyat = v["evfiyat"]
            evdurumu = v["evdurum"]
        end
    end
    for i,v in pairs(result) do
        if tostring(v.evsahip) == tostring(hesap) then
            evadedi = evadedi + 1
        end 
    end
    if tostring(hesap) == tostring(oncekievsahip) then outputChatBox(language[dil]["evsatinalmahatasi1"],source,255,255,255,true) return end
    if evadedi < evsiniri then
        if tostring(evdurumu) == "Satılık" then
            if tonumber(money) >= tonumber(evfiyat) then
                takePlayerMoney(source,tonumber(evfiyat))
                local time = getRealTime()
                local monthday = time.monthday
                local month = time.month
                local year = time.year
                local gonderilecek = 0 - tonumber(evfiyat)
                local tarih = string.format("%02d-%02d-%04d", monthday, month + 1, year + 1900)
                dbExec(db,"UPDATE veriler SET evsahip = ?, evoncekifiyat = ?, evdurum = ?, evoncekisahip = ?, evsatistarih = ? WHERE id = ?",hesap,evfiyat,"Satılık Değil",tostring(oncekievsahip),tostring(tarih),id)
                triggerEvent("gecmis:ekle", root, hesap, "Bir Ev satın aldınız! Ev Sıra Numarası = "..id)
                triggerEvent("gecmis:ekle", root, oncekievsahip, "Bir Ev Sattınız! Satılan Evin Sıra Numarası: "..id)
                triggerEvent("para:ekle", root, oncekievsahip, tonumber(evfiyat))
                triggerEvent("para:ekle", root, hesap, tonumber(gonderilecek))
                for i,v in pairs(evler) do
                    if tostring(v[3]) == tostring(id) then
                        setPickupType(v[1],3,1272)
                    end
                end
                outputChatBox(language[dil]["evsatinalmabildiri"]..id..language[dil]["evsatinalmabildiri2"],source,255,255,255,true)
                triggerClientEvent(source,"EvSystem:PanelKapa",source)
            else
                outputChatBox(language[dil]["evsatinalmahatasi2"],source,255,255,255,true)
            end
        else
            outputChatBox(language[dil]["evsatinalmahatasi3"],source,255,255,255,true)
        end
    else
        outputChatBox(language[dil]["evsatinalmahatasi4"]..tostring(evsiniri),source,255,255,255,true)
    end
end)

addEvent("EvSystem:HomeSale",true)
addEventHandler("EvSystem:HomeSale",root,function(id,durums,miktar)
    if durums == "Satıştan Kaldır" then
        for i,v in pairs(evler) do
            if tostring(v[3]) == tostring(id) then
                setPickupType(v[1],3,1272)
            end
        end
        dbExec(db,"UPDATE veriler SET evdurum = ? WHERE id = ?","Satılık Değil",id)
        outputChatBox(language[dil]["satiligacikarmabildiri"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:PanelKapa2",source)
    elseif durums == "Satışa Çıkar" then
	if miktar == "" then outputChatBox(language[dil]["satisacikarmahata1"],source,255,255,255,true) return end
        if tonumber(miktar) <= 0 then outputChatBox(language[dil]["satisacikarmahata2"],source,255,255,255,true) return end
        for i,v in pairs(evler) do
            if tostring(v[3]) == tostring(id) then
                setPickupType(v[1],3,1273)
            end
        end
        dbExec(db,"UPDATE veriler SET evfiyat = ?, evdurum = ? WHERE id = ?",tonumber(miktar),"Satılık",id)
        outputChatBox(language[dil]["satisacikarmabildiri"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:PanelKapa2",source)
    end
    if durums == "Kiralığa Çıkar" then
	if miktar == "" then outputChatBox(language[dil]["kiraligacikarmahata1"],source,255,255,255,true) return end
        if tonumber(miktar) <= 0 then outputChatBox(language[dil]["kiraligacikarmahata2"],source,255,255,255,true) return end
        for i,v in pairs(evler) do
            if tostring(v[3]) == tostring(id) then
                setPickupType(v[1],3,1273)
            end
        end
        dbExec(db,"UPDATE veriler SET evdurum = ?, evkiradurum = ?, evkirafiyat = ? WHERE id = ?","Kiralık","Kiralık",tonumber(miktar),id)
        outputChatBox(language[dil]["kiraligacikarmabildiri"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:PanelKapa2",source)
    end
    if durums == "Kiradan At" then
        for i,v in pairs(evler) do
            if tostring(v[3]) == tostring(id) then
                setPickupType(v[1],3,1272)
            end
        end
        s = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
        hsp = getAccountName(getPlayerAccount(source))
        local kiraci
        for i,v in pairs(s) do
            if id == v["id"] then
                kiraci = v[evkiraci]
            end
        end
        for i,v in pairs(evkiracilari) do
            if kiraci == v then
                table.remove(evkiracilari,i)
            end
        end
        dbExec(db,"UPDATE veriler SET evdurum = ?, evkiradurum = ?, evkiraci = ?, evkirafiyat = ? WHERE id = ?","Satılık Değil","Kirada Değil","Yok","Yok",id)
        outputChatBox(language[dil]["kiradankaldirmabildiri"],source,255,255,255,true)
        triggerClientEvent(source,"EvSystem:PanelKapa2",source)
    end
end)

addCommandHandler("kiradancik",function(oyuncu,cmd)
    local resulta = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    local hesabi = getAccountName(getPlayerAccount(oyuncu))
    local kiracimi = false
    local evid
    for i,v in pairs(resulta) do 
        if tostring(hesabi) == tostring(v["evkiraci"]) then
            kiracimi = true
            evid = v["id"]
        end
    end
    if kiracimi == true then
        dbExec(db,"UPDATE veriler SET evkiraci = ?, evdurum = ?, evkiradurum = ? WHERE id = ?","Yok","Kiralık","Kiralık",evid)
        for i,v in pairs(evler) do
            if tostring(v[3]) == tostring(evid) then
                setPickupType(v[1],3,1273)
            end
        end
        for i,v in pairs(evkiracilari) do
            if hesabi == v then
                table.remove(evkiracilari,i)
            end
        end
        outputChatBox(language[dil]["kiradancikmabildiri"])
    else
        outputChatBox(language[dil]["kiradancikmahata1"])
    end
end)

addEvent("EvSystem:HomeRent",true)
addEventHandler("EvSystem:HomeRent",root,function(id)
    local resulta = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
    local hesap = getAccountName(getPlayerAccount(source))
    local kiracimi = false
    local kiradurumu
    local kirafiyati
    local evsahibi
    local money = getPlayerMoney(source)
    for i,v in pairs(resulta) do
        if tostring(id) == tostring(v.id) then
            kiradurumu = tostring(v.evkiradurum)
            kirafiyati = tonumber(v.evkirafiyat)
            evsahibi = tostring(v.evsahip)
        end
        if hesap == tostring(v.evkiraci) then
            kiracimi = true
        end
    end
    if kiradurumu == "Kiralık" then
        if tonumber(money) >= kirafiyati then
            if kiracimi == false then
                if hesap == evsahibi then return outputChatBox(language[dil]["kiralamahata1"],source,255,255,255,true) end
                takePlayerMoney(source,kirafiyati)
                local gonderilecek = 0 - tonumber(kirafiyati)
                for i,v in pairs(evler) do
                    if tostring(v[3]) == tostring(id) then
                        setPickupType(v[1],3,1272)
                    end
                end
                local time = getRealTime()
                local gun = time.monthday
                local ay = time.month + 1
                local text = {gun,ay}
                local kiraodemesi = toJSON(text)
                local varmi = false
                for i,v in pairs(evkiracilari) do
                    if hesap == v then
                        varmi = true
                    end
                end
                if varmi == false then table.insert(evkiracilari,hesap) end
                triggerEvent("gecmis:ekle", root, hesap, "Bir Ev  kiraladınız! Ev Sıra Numarası = "..id)
                triggerEvent("gecmis:ekle", root, evsahibi, "Bir Eviniz Kiralandı! Kiralanan Evin Sıra Numarası: "..id)
                triggerEvent("para:ekle", root, evsahibi, tonumber(kirafiyati))
                triggerEvent("para:ekle", root, hesap, tonumber(gonderilecek))
                dbExec(db,"UPDATE veriler SET evdurum = ?, evkiradurum = ?, evkiraci = ?, evoncekikirafiyat = ?, evkira = ? WHERE id = ?","Kirada","Kirada",hesap,kirafiyati,kiraodemesi,id)
                outputChatBox("#FFFFFFEvi Başarıyla #ff7f00Kiraladınız! #ffffffİlk Kira ücreti ev sahibine gönderildi.",source,255,255,255,true)
                triggerClientEvent(source,"EvSystem:PanelKapa",source)
            else
                outputChatBox(language[dil]["kiralamahata2"],source,255,255,255,true)
            end
        else
            outputChatBox(language[dil]["kiralamahata3"],source,255,255,255,true)
        end
     elseif kiradurumu == "Kirada" then
            outputChatBox(language[dil]["kiralamahata4"],source,255,255,255,true)
        else
            outputChatBox(language[dil]["kiralamahata5"],source,255,255,255,true)
    end
end) 

addCommandHandler("evler",function(oyuncu,cmd)
        local result = dbPoll(dbQuery(db,"SELECT * FROM veriler ORDER BY id ASC"),-1)
        triggerClientEvent(oyuncu,"EvSystem:Homes",oyuncu,result)
end)

addEvent("EvSystem:HomeTP",true)
addEventHandler("EvSystem:HomeTP",root,function(id)
    local result = dbPoll(dbQuery(db,"SELECT * FROM veriler WHERE id = ?",id),-1)
    local x,y,z
    for i,v in pairs(result) do
        local lokasyon = fromJSON(v.evxyz)
        x,y,z = unpack(lokasyon)
    end
    setElementPosition(source,x,y,z)
end)

addEventHandler("onPlayerLogin",getRootElement(),function()
    local hesap = getAccountName(getPlayerAccount(source))
    local varmi
    local id
    local time = getRealTime()
    local bugunungunu = time.monthday
    local bugununayi = time.month + 1
    local yil = tonumber(time.year) + 1900
    for i,v in pairs(evkiracilari) do
        if v == hesap then
            varmi = true
        end
    end
    if varmi == true then
        local ay
        local gun
        veritb = dbPoll(dbQuery(db,"SELECT * FROM veriler"),-1)
        for i,v in pairs(veritb) do
            if v["evkiraci"] == hesap then
                local tarih = fromJSON(v["evkira"])
                gun,ay = unpack(tarih)
                id = v["id"]
            end 
        end
        if tonumber(bugunungunu) >= tonumber(gun) and tonumber(bugununayi) > tonumber(ay) then
            outputChatBox(language[dil]["kiragunudoldu"],source,255,255,255,true)
            dbExec(db,"UPDATE veriler SET evkiraci = ?, evdurum = ?, evkiradurum = ? WHERE id = ?","Yok","Kiralık","Kiralık",id)
            for i,v in pairs(evler) do
                if tostring(v[3]) == tostring(evid) then
                    setPickupType(v[1],3,1273)
                end
            end
            for i,v in pairs(evkiracilari) do
                if hesap == v then
                    table.remove(evkiracilari,i)
                end
            end
        elseif (tonumber(ay) + 1) == 13 and tonumber(bugununayi) == 1 and tonumber(bugunungunu) >= tonumber(gun) then
            outputChatBox(language[dil]["kiragunudoldu"],source,255,255,255,true)
            dbExec(db,"UPDATE veriler SET evkiraci = ?, evdurum = ?, evkiradurum = ? WHERE id = ?","Yok","Kiralık","Kiralık",id)
            for i,v in pairs(evler) do
                if tostring(v[3]) == tostring(evid) then
                    setPickupType(v[1],3,1273)
                end
            end
            for i,v in pairs(evkiracilari) do
                if hesap == v then
                    table.remove(evkiracilari,i)
                end
            end
        else
            outputChatBox(language[dil]["kirahabercisi1"]..tostring(gun).."."..tostring(ay+1).."."..tostring(yil)..language[dil]["kirahabercisi2"],source,255,255,255,true)
        end 
    end 
end)