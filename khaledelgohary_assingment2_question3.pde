final float TAIL_BOOM_X3=250;
final float TAIL_BOOM_Y3=460;
final float SCALE_MIN=0.05;
 float S=SCALE_MIN; 
final float SCALE_MAX=1.75;
final float DELTA_MAX=2*PI;
final float DELTA_MIN=PI/10000;
final float ENGINE_COVERX=(TAIL_BOOM_X3-50)*S;
final float ENGINE_COVERY=(TAIL_BOOM_Y3-260)*S;
final float ENGINE_WIDTH=100*S;
final float MAIN_ROTOR_X=((ENGINE_COVERX+ENGINE_WIDTH/2)+60)*S;
final float MAIN_ROTOR_Y=((ENGINE_COVERY+ENGINE_WIDTH/2)+60)*S;
boolean button1=false;
boolean button2=false;
final float butonsY=480;
final float buton1X=25;
final float buton2X=60;
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
if(mousePressed &&( mouseX>=buton1X) && (mouseX<=buton1X+buttons_w_h)&& S<=SCALE_MAX &&delta<=DELTA_MAX ){
  if(mouseY>=butonsY && mouseY<=butonsY+buttons_w_h){
    delta=delta+speed;
    S=S+0.005;
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
  if(mouseY>=butonsY && mouseY<=(butonsY+buttons_w_h) && delta>=0 && S>=SCALE_MIN && delta>=DELTA_MIN  ){
    delta=delta-speed;
    S=S-0.005;
    }
}
}
void blades(){
final float BLADE_X1=(TAIL_BOOM_X3-225);
final float BLADE_Y1=(TAIL_BOOM_Y3-222);
final float BLADE_WIDTH=450*S;
final float BLADE_HEIGHT=20*S;
pushMatrix();
translate(250*S,250*S);
rotate(theta);
fill(43,4,118);
rect((BLADE_X1-240)*S,(BLADE_Y1-250)*S,BLADE_WIDTH,BLADE_HEIGHT);
popMatrix();
}
void cockpit_fuselage(){
final float COCKPIT_X=(TAIL_BOOM_X3-100)*S;
final float COCKPIT_Y=(TAIL_BOOM_Y3-310)*S;
final float COCKPIT_WIDTH=200*S;
final float COCKPIT_HEIGHT=200*S;
final float COCKPIT_WINDOW1X=(TAIL_BOOM_X3-100)*S;
final float COCKPIT_WINDOW1Y=(TAIL_BOOM_Y3-285)*S;
final float COCKPIT_WINDOW2X=(TAIL_BOOM_X3+92)*S;
final float COCKPIT_WINDOW2Y=(TAIL_BOOM_Y3-285)*S;
final float COCKPIT_WINDOWS_WIDTH=8*S;
final float COCKPIT_WINDOWS_HEIGHT=100*S;
final float FUSELAGE_WIDTH_HEIGHT=200*S;
strokeWeight(2);
fill(29,90,39);
ellipse(COCKPIT_X+(COCKPIT_WIDTH/2),COCKPIT_Y,FUSELAGE_WIDTH_HEIGHT,FUSELAGE_WIDTH_HEIGHT); // fuselage construction
strokeWeight(3);
fill(49,167,68);
rect(COCKPIT_X,COCKPIT_Y,COCKPIT_WIDTH,COCKPIT_HEIGHT); // cockpit construction 
strokeWeight(2);
fill(0);
strokeWeight(3);
rect(COCKPIT_WINDOW1X,COCKPIT_WINDOW1Y,COCKPIT_WINDOWS_WIDTH,COCKPIT_WINDOWS_HEIGHT);
strokeWeight(3);
rect(COCKPIT_WINDOW2X,COCKPIT_WINDOW2Y,COCKPIT_WINDOWS_WIDTH,COCKPIT_WINDOWS_HEIGHT);
}
void engine(){
final float ENGINE_COVERX=(TAIL_BOOM_X3-50)*S;
final float ENGINE_COVERY=(TAIL_BOOM_Y3-260)*S;
final float ENGINE_WIDTH=100*S;
final float ENGINE_HEIGHT=100*S;
strokeWeight(3);
fill(40,111,51);
rect(ENGINE_COVERX,ENGINE_COVERY,ENGINE_WIDTH,ENGINE_HEIGHT);// engine cover construction 
}
void TAILBOOM_FAN(){
final float TAIL_BOOM_X1=(TAIL_BOOM_X3-75)*S;
final float TAIL_BOOM_Y1=(TAIL_BOOM_Y3-110)*S;
final float TAIL_BOOM_X2=(TAIL_BOOM_X3+75)*S;
final float TAIL_BOOM_Y2=(TAIL_BOOM_Y3-110)*S;
final float TAIL_BOOM_X3=250*S;
final float TAIL_BOOM_Y3=460*S;
final float TAIL_FANX=(TAIL_BOOM_X3-8)*S;
final float TAIL_FANY=(TAIL_BOOM_Y3-60)*S;
final float TAIL_FANWIDTH=15*S;
final float TAIL_FANHEIGHT=40*S;
fill(61,98,22);
triangle(TAIL_BOOM_X1,TAIL_BOOM_Y1,TAIL_BOOM_X2,TAIL_BOOM_Y2,TAIL_BOOM_X3,TAIL_BOOM_Y3);
fill(0);
rect((TAIL_BOOM_X3-(8)*S),(TAIL_BOOM_Y3-(60)*S),TAIL_FANWIDTH,TAIL_FANHEIGHT);
}
void elevtail_sync(){
final float ELEV_TAIL1_X=(TAIL_BOOM_X3-100)*S;
final float ELEV_TAIL1_Y=(TAIL_BOOM_Y3-40)*S;
final float ELEV_TAIL1_WIDTH=10*S;
final float ELEV_TAIL1_HEIGHT=50*S;
final float ELEV_TAIL2_X=(TAIL_BOOM_X3+100)*S;
final float ELEV_TAIL2_Y=(TAIL_BOOM_Y3-40)*S;
final float ELEV_TAIL2_WIDTH=10*S;
final float ELEV_TAIL2_HEIGHT=50*S;
final float SYNC_ELE_X=(TAIL_BOOM_X3-90)*S;
final float SYNC_ELE_Y=(TAIL_BOOM_Y3-30)*S;
final float SYNC_ELE_WIDTH=190*S;
final float SYNC_ELE_HEIGHT=30*S;
final float ELE_DECAL_1X=(TAIL_BOOM_X3-70)*S;
final float ELE_DECAL_Y=(TAIL_BOOM_Y3-15)*S;
final float ELE_DECAL_2X=(TAIL_BOOM_X3+80)*S;
final float ELE_DECAL_W_H_=30*S;
fill(24,21,75);
rect(SYNC_ELE_X,SYNC_ELE_Y,SYNC_ELE_WIDTH,SYNC_ELE_HEIGHT);
fill(0);
ellipse(ELE_DECAL_1X,ELE_DECAL_Y,ELE_DECAL_W_H_,ELE_DECAL_W_H_);
fill(0);
ellipse(ELE_DECAL_2X,ELE_DECAL_Y,ELE_DECAL_W_H_,ELE_DECAL_W_H_);
fill(19,23,57);
rect(ELEV_TAIL1_X,ELEV_TAIL1_Y,ELEV_TAIL1_WIDTH,ELEV_TAIL1_HEIGHT);
rect(ELEV_TAIL2_X,ELEV_TAIL2_Y,ELEV_TAIL2_WIDTH,ELEV_TAIL2_HEIGHT);
}
void main_rotor(){
final float MAIN_ROTOR_X=TAIL_BOOM_X3*S;
final float MAIN_ROTOR_Y=(TAIL_BOOM_Y3-215)*S;
final float MAIN_ROTOR_W_H_=50*S;
fill(0);
ellipse(MAIN_ROTOR_X,MAIN_ROTOR_Y,MAIN_ROTOR_W_H_,MAIN_ROTOR_W_H_);
}
void draw(){
background(255);
button1();
button2();
elevtail_sync();
cockpit_fuselage();
TAILBOOM_FAN();
engine();
blades();
main_rotor();
if (button1 && S<=SCALE_MAX && delta<=DELTA_MAX)
  {delta =(delta+speed);
   S=S+0.005;}
else if (button2 && S>=SCALE_MIN && delta>=DELTA_MIN)
  {delta=delta-speed;
   S=S-0.005;}
theta=theta+delta;
}
