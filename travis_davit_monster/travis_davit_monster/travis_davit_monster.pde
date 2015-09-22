

void setup(){
  size(600, 600);
  backgrnd();
   
}

void draw(){
  if(mousePressed == true){  //making him angry
    beginShape(); //eyebrow
    fill(0, 0, 0);
    vertex(245, 110);
    vertex(245, 120);
    vertex(300, 90);
    vertex(300, 70);
    endShape(); 
    
    //necktie_angry
    beginShape();
    fill(180, 20, 20);
    curveVertex(80, 20);
    curveVertex(380, 160);
    curveVertex(280, 220);
    curveVertex(680, 380);
    endShape();
    
  }
  
  else{
    backgrnd();   //going back to normal state
  }
  
  /*boolean did_print = false;

  if(!did_print)  {
      println("Make him angry by pressing your mouse.");
      did_print = true;

}*/
}      

void backgrnd(){
  background(40, 40, 60);
  int xneck = 320; //neck
  int yneck = 150;
  neck(xneck, yneck);
  neck(xneck-200, yneck-75);
  
  int xhead = 300; //head
  int yhead = 120;
  int whead = 120;
  head(xhead, yhead, whead);
  head(xhead-200, yhead-75, whead-60);
  
  necktie();
  
  int xtorso = 330;  //torso
  int ytorso = 275;
  torso(xtorso, ytorso);
  torso(xtorso-200, ytorso-75);
  
  thigh(350, 340);
  thigh(150, 265);
  
  

}

  
  //neck
   void neck(int xNeck, int yNeck){
     
    fill(255, 255, 255);
    //rect(320, 150, 20, 75);
    rect(xNeck, yNeck, 20, 75);
    xNeck= 320;
    yNeck = 150;

   }
   
  //head
  void head(int xHead, int yHead, int wHead){
    
    ellipseMode(CENTER);
    fill(100, 200, 180);
    //ellipse(300, 120, 120, 120);
    ellipse(xHead, yHead, wHead, 120);
    xHead = 300;
    yHead = 120;
    wHead = 120;
  }
  
  //necktie
  void necktie(){
    
    beginShape();
    fill(80, 120, 120);
    curveVertex(80, 20);
    curveVertex(380, 160);
    curveVertex(280, 220);
    curveVertex(680, 380);
    endShape();
  }
  
  //torso 
  void torso(int xTorso, int yTorso){
    fill(0, 180, 200);
    //ellipse(330, 275, 80, 150);
    ellipse(xTorso, yTorso, 80, 150);
    xTorso = 330;
    yTorso = 275;
  
  }
  
  //thigh
  void thigh(int x, int y){
    beginShape();
    fill(40, 170, 100);
    /*vertex(350, 340);
    vertex(340, 320);
    vertex(300, 340);
    vertex(290, 460);
    vertex(320, 460);*/
    vertex(x, y);
    vertex(x-10, y-20);
    vertex(x-50, y);
    vertex(x-60, y+120);
    vertex(x-30, y+120);
    endShape();
  }
  
  void lower_leg(){
  
    beginShape();
    fill(160, 70, 100);
    vertex(290, 450);
    vertex(310, 430);
    vertex(330, 450);
    vertex(330, 460);
    vertex(330, 460);
    vertex(340, 600);
    endShape();
  }

  //arm
  void arm(){
    
    beginShape();
    fill(100, 70, 120);
    vertex(310, 240);
    vertex(330, 220);
    vertex(350, 240);
    vertex(380, 380);
    vertex(380, 380);
    vertex(365, 430);
    endShape();
  }
    
  //eye
  void eye(){
    fill(255, 255, 255);
    ellipse(270, 110, 30, 30); 
  }