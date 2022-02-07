String[] currentlist;
String[] titles = {"\"Survivor\"\nDestiny’s Child (2001)","\"Part of Me\"\n Katy Perry (2012)","\"Respect\"\n Aretha Franklin (1967)","\"Not Ready to Make Nice\"\nThe Chicks (2006)","\"I Will Survive\"\nGloria Gaynor (1978)"};
ArrayList<String[]> all_list;

ArrayList<PFont> textstyle;
PFont a;
PFont b;
PFont c;
PFont d;
PFont e;

void setup() {
fullScreen();
String[] l1 = {"youre","life","much","better","thought","weak","without","stronger","broke","richer","sad","laugh","harder","wouldnt","grow","wiser","though","helpless","smarter","stressed","chillin","sell","sold","nine","million","survivor","gon","give","stop","work","make","survive","keep","survivin","couldnt","breathe","inhaling","see","perfect","vision","last","lastin","would","die","livin","fail","top","wont","self","destruct","still","even","years","come","yea","wishin","best","pray","blessed","whoo","bring","success","stress","lots","happiness","blast","radio","lie","family","hate","magazines","compromise","christianity","know","diss","internet","cause","mama","taught","oh","ohh","darkness","sadness","comes","surround","positive","things","ill","gain","prosperity","dont","im","fine","sexy","bootylicious"};
String[] l2 = {"days","like","want","drive","away","pack","bags","watch","shadow","fade","chewed","spit","poison","mouth","took","light","drained","look","part","youre","never","gon","ever","take","throw","sticks","stones","bombs","blows","break","soul","wan","phone","find","really","ripped","love","cheap","always","tearing","seams","fell","deep","let","sparkling","firework","dancing","flame","wont","put","glowin","whoa","keep","diamond","ring","dont","mean","nothing","anyway","fact","everything","yeah","except"};
String[] l3 = {"want","baby","got","need","know","askin","little","respect","come","home","bit","hey","get","mister","aint","gon","wrong","youre","gone","cause","dont","wan","yeah","give","money","return","honey","profits","ooh","kisses","sweeter","guess","whip","e","find","means","take","care","tcb","sock","whoa","babe","tired","keep","tryin","runnin","foolin","lyin","might","walk","im"};
String[] l4 = {"forgive","sounds","good","forget","sure","could","say","time","heals","everything","still","waiting","doubt","theres","nothing","left","figure","ive","paid","price","ill","keep","paying","ready","make","nice","back","mad","hell","dont","round","late","right","probably","wouldnt","cause","cant","bring","think","know","said","get","turned","whole","world","around","kind","like","made","bed","sleep","baby","regrets","mind","sayin","sad","story","mother","teach","daughter","ought","hate","perfect","stranger","words","send","somebody","edge","theyd","write","letter","better","shut","sing","life"};
String[] l5 = {"first","afraid","petrified","kept","thinking","could","never","live","without","side","spent","many","nights","wrong","grew","strong","learned","get","along","youre","back","outer","space","walked","find","sad","look","upon","face","changed","stupid","lock","made","leave","key","known","one","second","youd","bother","walk","door","turn","around","cause","welcome","anymore","werent","tried","hurt","goodbye","think","crumble","lay","die","survive","long","know","love","ill","stay","alive","ive","got","life","give","hey","took","strength","fall","apart","trying","hard","mend","pieces","broken","heart","feeling","sorry","used","cry","hold","head","high","see","somebody","new","chained","little","person","still","felt","like","dropping","expect","free","saving","loving","someone","whos","break","go","much","yes","yeah"};
all_list = new ArrayList<String[]>();
all_list.add(l1);
all_list.add(l2);
all_list.add(l3);
all_list.add(l4);
all_list.add(l5);
currentlist = all_list.get(0);




//font
a = createFont("Arial Bold Italic",40);
b = createFont("MV Boli",40);
c = createFont("Gabriola",40);
d = createFont("Ink Free",40);
e = createFont("Segoe Script",40);

//array
textstyle = new ArrayList<PFont>();
textstyle.add(a);
textstyle.add(b);
textstyle.add(c);
textstyle.add(d);
textstyle.add(e);

//frame rate
frameRate(1);

}

void draw() {
background(0);

for (int i=0; i<currentlist.length;  i++){
int style = int(random(0,5));
int fontsize = int(map(currentlist[i].length(),0,20,15,90));
fill(random(255),random(255),random(255));
textFont(textstyle.get(style),fontsize);
float x_loc = random(width/30,width-width/10); 
float y_loc = random(height/20, height - height/20);
while(x_loc>width/3 && x_loc<2*width/3 && y_loc>1.5*height/5 && y_loc<3.5*height/5){
  x_loc = random(width/30,width-width/10); 
  y_loc = random(height/20, height - height/20);
}
text(currentlist[i],x_loc,y_loc);
}

fill(255);
rect(width/3, 2*height/5, width/3, height/5, 40);
textAlign(CENTER);
fill(0);
textFont(c,40);
if(currentlist == all_list.get(0)){
  text(titles[0],width/2,height/2.15);
}
else if(currentlist == all_list.get(1)){
  text(titles[1],width/2,height/2.15);
}
else if(currentlist == all_list.get(2)){
  text(titles[2],width/2,height/2.15);
}
else if(currentlist == all_list.get(3)){
  text(titles[3],width/2,height/2.15);
}
else if(currentlist == all_list.get(4)){
  text(titles[4],width/2,height/2.15);
}
noStroke();
fill(255,0,0);
rect(1.03*width/3, 2.8*height/5, width/16, random(height/20 - 5,height/20 + 5),10);
fill(255,255,0);
rect(1.03*width/3 + width/16, 2.8*height/5, width/16, random(height/20 - 5,height/20 + 5),10);
fill(255,0,255);
rect(1.03*width/3 + width/16 + width/16, 2.8*height/5, width/16, random(height/20 - 5,height/20 + 5),10);
fill(0,255,0);
rect(1.03*width/3 + width/16 + width/16 + width/16, 2.8*height/5, width/16, random(height/20 - 5,height/20 + 5),10);
fill(0,0,255);
rect(1.03*width/3 + width/16 + width/16 + width/16 + width/16, 2.8*height/5, width/16, random(height/20 - 5,height/20 + 5),10);

}

void mouseClicked() {
  if(mouseY>2.8*height/5  &&  mouseY<height/20 + 2.8*height/5 + 5){
    if(mouseX>1.03*width/3 && mouseX<1.03*width/3 + width/16){
      currentlist = all_list.get(0);
    }
    else if(mouseX>1.03*width/3 + width/16  &&  mouseX<1.03*width/3 + width/16 + width/16){
      currentlist = all_list.get(1);
    }
    else if(mouseX>1.03*width/3 + width/16 + width/16  &&  mouseX<1.03*width/3 + width/16 + width/16 + width/16){
      currentlist = all_list.get(2);
    }
    else if(mouseX>1.03*width/3 + width/16 + width/16 + width/16  &&  mouseX<1.03*width/3 + width/16 + width/16 + width/16 + width/16){
      currentlist = all_list.get(3);
    }
    else if(mouseX>1.03*width/3 + width/16 + width/16 + width/16 + width/16  &&  mouseX<1.03*width/3 + width/16 + width/16 + width/16 + width/16 + width/16){
      currentlist = all_list.get(4);
    }
  }
}
