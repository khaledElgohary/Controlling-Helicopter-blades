final float butonsY=480;
final float buton1X=225;
final float buton2X=260;
final float buttons_w_h=30;
float theta=0;
float delta=0;
float speed=PI/1500;
void setup(){
size(500,500);
}
void button1(){
fill(200);
rect(buton1X,butonsY,buttons_w_h,buttons_w_h);
textSize(15);
fill(0);
text("UP",buton1X+5,butonsY+15);
if(mousePressed &&( mouseX>=buton1X) && (mouseX<=buton1X+buttons_w_h)){
  if(mouseY>=butonsY && mouseY<=butonsY+buttons_w_h){
    delta=delta+speed;
    }
}
}
void button2(){
fill(200);
rect(buton2X,butonsY,buttons_w_h,buttons_w_h);
textSize(15);
fill(0);
text("DN",buton2X+5,butonsY+15);
if(mousePressed &&( mouseX>=buton2X) && (mouseX<=buton2X+buttons_w_h)){
  if(mouseY>=butonsY && mouseY<=butonsY+buttons_w_h && delta>=0){
    delta=delta-speed;
    }
}
}
void blades(){
final int BLADE_X1=25;
final int BLADE_Y1=238;
final int BLADE_WIDTH=450;
final int BLADE_HEIGHT=20;
translate(250,250);
rotate(theta);
rect(BLADE_X1-250,BLADE_Y1-250,BLADE_WIDTH,BLADE_HEIGHT);
}
void draw(){
background(255);
button1();
button2();
final int COCKPIT_X=150;
final int COCKPIT_Y=150;
final int COCKPIT_WIDTH=200;
final int COCKPIT_HEIGHT=200;
final int ENGINE_COVERX=200;
final int ENGINE_COVERY=200;
final int ENGINE_WIDTH=100;
final int ENGINE_HEIGHT=100;
final int FUSELAGE_WIDTH_HEIGHT=200;
final int COCKPIT_WINDOW1X=150;
final int COCKPIT_WINDOW1Y=175;
final int COCKPIT_WINDOW2X=342;
final int COCKPIT_WINDOW2Y=175;
final int COCKPIT_WINDOWS_WIDTH=8;
final int COCKPIT_WINDOWS_HEIGHT=100;
final int TAIL_BOOM_X1=175;
final int TAIL_BOOM_Y1=350;
final int TAIL_BOOM_X2=325;
final int TAIL_BOOM_Y2=350;
final int TAIL_BOOM_X3=250;
final int TAIL_BOOM_Y3=460;
final int TAIL_FANX=242;
final int TAIL_FANY=400;
final int TAIL_FANWIDTH=15;
final int TAIL_FANHEIGHT=40;
final int ELEV_TAIL1_X=150;
final int ELEV_TAIL1_Y=420;
final int ELEV_TAIL1_WIDTH=10;
final int ELEV_TAIL1_HEIGHT=50;
final int ELEV_TAIL2_X=350;
final int ELEV_TAIL2_Y=420;
final int ELEV_TAIL2_WIDTH=10;
final int ELEV_TAIL2_HEIGHT=50;
final int SYNC_ELE_X=160;
final int SYNC_ELE_Y=430;
final int SYNC_ELE_WIDTH=190;
final int SYNC_ELE_HEIGHT=30;
final int ELE_DECAL_1X=180;
final int ELE_DECAL_Y=445;
final int ELE_DECAL_2X=330;
final int ELE_DECAL_W_H_=30;
final int MAIN_ROTOR_X=250;
final int MAIN_ROTOR_Y=250;
final int MAIN_ROTOR_W_H_=50;
strokeWeight(2);
fill(29,90,39);
ellipse(COCKPIT_X+(COCKPIT_WIDTH/2),COCKPIT_Y,FUSELAGE_WIDTH_HEIGHT,FUSELAGE_WIDTH_HEIGHT); // fuselage construction
strokeWeight(3);
fill(49,167,68);
rect(COCKPIT_X,COCKPIT_Y,COCKPIT_WIDTH,COCKPIT_HEIGHT); // cockpit construction 
strokeWeight(3);
fill(40,111,51);
rect(ENGINE_COVERX,ENGINE_COVERY,ENGINE_WIDTH,ENGINE_HEIGHT);// engine cover construction 
strokeWeight(2);
fill(0);
strokeWeight(3);
rect(COCKPIT_WINDOW1X,COCKPIT_WINDOW1Y,COCKPIT_WINDOWS_WIDTH,COCKPIT_WINDOWS_HEIGHT);
strokeWeight(3);
rect(COCKPIT_WINDOW2X,COCKPIT_WINDOW2Y,COCKPIT_WINDOWS_WIDTH,COCKPIT_WINDOWS_HEIGHT);
fill(134,9,9);
fill(0);
ellipse(MAIN_ROTOR_X,MAIN_ROTOR_Y,MAIN_ROTOR_W_H_,MAIN_ROTOR_W_H_); /*main rotor*/ ;
fill(24,21,75);
rect(SYNC_ELE_X,SYNC_ELE_Y,SYNC_ELE_WIDTH,SYNC_ELE_HEIGHT);
fill(0);
ellipse(ELE_DECAL_1X,ELE_DECAL_Y,ELE_DECAL_W_H_,ELE_DECAL_W_H_);
fill(0);
ellipse(ELE_DECAL_2X,ELE_DECAL_Y,ELE_DECAL_W_H_,ELE_DECAL_W_H_);
fill(61,98,22);
triangle(TAIL_BOOM_X1,TAIL_BOOM_Y1,TAIL_BOOM_X2,TAIL_BOOM_Y2,TAIL_BOOM_X3,TAIL_BOOM_Y3);
fill(0);
rect(TAIL_FANX,TAIL_FANY,TAIL_FANWIDTH,TAIL_FANHEIGHT);
fill(19,23,57);
rect(ELEV_TAIL1_X,ELEV_TAIL1_Y,ELEV_TAIL1_WIDTH,ELEV_TAIL1_HEIGHT);
rect(ELEV_TAIL2_X,ELEV_TAIL2_Y,ELEV_TAIL2_WIDTH,ELEV_TAIL2_HEIGHT);
blades();
fill(0);
ellipse(MAIN_ROTOR_X-250,MAIN_ROTOR_Y-250,MAIN_ROTOR_W_H_,MAIN_ROTOR_W_H_);

theta=theta+delta;
}
