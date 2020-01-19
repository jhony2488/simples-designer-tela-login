import controlP5.*;
import java.io.*; 
import javax.swing.JOptionPane;
ControlP5 cp5;
ControlP5 cp6;
PImage senai;
PImage siscor;
PImage background1;
String url1, url2, url3, url4, url5, url6, url7, url8;
String txt1 = "";
String txt2 = "";
String txt3 = "";
String txt4 = "";
String txt5 = "";
String txt6 = "";
String result;
String result2;
boolean login;
boolean cadastro;
boolean desativarlogin=false;
void setup() {
  size(displayWidth, displayHeight);
  cp5 = new ControlP5(this);
  cp6 = new ControlP5(this);
  senai=loadImage("images/senai.png");
  siscor=loadImage("images/SISCOR.jpg");
    background1=loadImage("images/background1.jpg");
 cp5.addButton("Confirm").setValue(1).setPosition(displayWidth/2.6, displayHeight/1.65).setSize(80, 40);  
  cp5.addButton("Cadastre-se").setPosition(displayWidth/1.9, displayHeight/1.65).setSize(80, 40); 
  cp5.addTextfield("Login").setPosition(displayWidth/2.85, displayHeight/2.3).setSize(400, 40).setAutoClear(false);
  cp5.addTextfield("Senha").setPosition(displayWidth/2.85, displayHeight/1.9).setSize(400, 40).setAutoClear(false);
}


void draw () {
  
  background(0);
   
  image(senai, displayWidth/2.59, displayHeight/1.4);
  image(siscor, displayWidth/3.05, displayHeight/15);
 if(cadastro==true){
   image(background1, 0, 0, displayWidth, displayHeight);
  }
  if (cadastro==false) {
    
    url1 = cp5.get(Textfield.class, "Login").getText();
    url2 = cp5.get(Textfield.class, "Senha").getText();
  }

  if (mousePressed&& cadastro==false) {


    // alternative 2
    println("alternative 2: " + cp5.isMouseOver(cp5.getController("Confirm")));
    login= cp5.isMouseOver(cp5.getController("Confirm"));

    // alternative 2
    println("alternative 2: " + cp5.isMouseOver(cp5.getController("Cadastre-se")));
    cadastro= cp5.isMouseOver(cp5.getController("Cadastre-se"));
  } else if (login==true) {
    result=url1;
    print("funcioonouu");
  } else if (cadastro==true) {
    result=url1;
    print("funcioonou");
    desativarlogin=true;
    cadastro();
  }
}
