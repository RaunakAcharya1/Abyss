ysp+=0.1
xsp=0
if place_meeting(x,y,oWeb){
   xspeed = 0.25
   yspeed = 0
}
else{
	xspeed=0.75
	yspeed = -2
}
if keyboard_check(vk_left){

xsp=-xspeed
 image_xscale = -1;
 
}

else if keyboard_check(vk_right){

xsp=+xspeed
  image_xscale = +1;
}


if place_meeting(x,y+1,oSolid){
ysp=0
if keyboard_check(vk_up){
ysp=yspeed

}
}

move_and_collide(xsp,ysp,oSolid) 

if place_meeting(x,y,oLava){
	room_restart()
}
if place_meeting(x,y,oSpikes){
	room_restart()
}
if place_meeting(x,y,oFlag){
room_goto_next()
}
if (y > room_height or y < 0 or x > room_width or x < 0) { 

    room_restart();

}
