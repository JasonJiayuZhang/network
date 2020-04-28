import processing.net.*;


Server myServer;
String incoming;

void setup(){
  size(300, 300);
  textAlign(CENTER, CENTER);
  textSize(20);
  
  incoming = "";
  
  myServer = new Server(this, 1234);
}

void draw(){
  background(0);
  fill(255);
  text(incoming, width/2, height/2+100);
  
  Client myClient = myServer.available();
  if(myClient != null) {
    incoming = myClient.readString();
  }
}

void mousePressed(){
  myServer.write("Hello");
}
