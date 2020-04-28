import processing.net.*;


Client myClient;
String incoming;

void setup(){
  size(300, 300);
  textAlign(CENTER, CENTER);
  textSize(20);
  
  incoming = "";
  
  myClient = new Client(this, "192.168.0.27", 1234);
}


void draw(){
  background(255);
  fill(0);
  text(incoming, width/2, height/2-100);
  
  if(myClient.available() > 0) {
    incoming = myClient.readString();
  }
}

void mousePressed(){
  myClient.write("Hello!");
}
