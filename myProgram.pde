/* @pjs preload="music.png","Listedit2.txt","ArialMT.vlw","MVBoli.vlw","Gabriola.vlw","InkFree.vlw","SegoeScript.vlw"; */
IntDict words;
ArrayList<PFont> textstyle;
PFont a;
PFont b;
PFont c;
PFont d;
PFont e;
PImage m;
String[] keys;
int[] values;


void setup() {
  fullScreen();
  words = new IntDict();
  
  //read file and create dic
  String[] tokens = loadStrings("Listedit2.txt");
  for (int i = 0 ; i < tokens.length; i++) {
    if (words.hasKey(tokens[i]) == true){
      words.increment(tokens[i]);
    }
    else{
      words.set(tokens[i],1);
    }
  }
  
  //font
  a = loadFont("ArialMT.vlw");
  b = loadFont("MVBoli.vlw");
  c = loadFont("Gabriola.vlw");
  d = loadFont("InkFree.vlw");
  e = loadFont("SegoeScript.vlw");
  
  //array
  textstyle = new ArrayList<PFont>();
  textstyle.add(a);
  textstyle.add(b);
  textstyle.add(c);
  textstyle.add(d);
  textstyle.add(e);
  
  //keys and values
  keys = words.keyArray();
  values = words.valueArray();
  
  //images
  m = loadImage("music.png");
  m.resize(width,height);
  
  //frame rate
  frameRate(0.5);
  
  println(words);
}

void draw() {
  background(0);
  image(m,0,0);
  for (int i=0; i<keys.length;  i++){
    int style = int(random(0,5));
    int fontsize = int(map(values[i],0,max(values),15,100));
    if ((values[i]==1) && (keys[i].length() > 3)) {
      fontsize = int(map(keys[i].length(),0,15,10,50));
    }
    fill(random(255),random(255),random(255));
    textFont(textstyle.get(style),fontsize);
    text(keys[i], random(width/30,width-width/10), random(height/20, height - height/20));
  }   
}
