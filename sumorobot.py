# SumoRobot
# Mustafa Gür TARAFINDAN KODLANMIŞTIR.

from js import robot
import math

# Robot olculeri
                             
robot.body_width(0.05)     
robot.body_height(0.05)   
robot.body_length(0.05)      
robot.wheel_radius(0.02)      
robot.wheel_thickness(0.01)  
robot.bumper_radius(0.015)    
robot.bumper_length(0.1)    

while robot.is_ok():
    if robot.front() == 500:
        robot.rotate(7)
        robot.move(0)
    if robot.front() < 2:
        robot.rotate(0)
        robot.move(2)

    if robot.front() < 0.4:
        robot.move(5)
        if not robot.front () < 0.4:
            robot.move(-1)
            robot.rotate(2)
    if robot.left() < 0.4:
        robot.rotate(6)
        if not robot.left() < 0.4:
            robot.move(0)
            robot.rotate(0) 
    if robot.right() < 0.4:
        robot.rotate(6)
        if not robot.right() < 0.4:
            robot.move(0)
            obot.rotate(0) 
    
    if robot.front_left_color() == 1:
        robot.move(-1)
        robot.sleep(0.2)
        robot.rotate(7)
        robot.move(0)

    if robot.front_right_color() == 1:
        robot.move(-1)
        robot.sleep(0.2)
        robot.rotate(7)
        robot.move(0)

    if robot.back_left_color() == 1 or robot.back_right_color() == 1:
        robot.move(5)
        robot.sleep(0.3)
        robot.rotate(7)
        robot.move(0)