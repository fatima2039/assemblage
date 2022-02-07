
IntDict words;
//ArrayList<PFont> textstyle;
//PFont a;
//PFont b;
//PFont c;
//PFont d;
//PFont e;
//PImage m;
String[] keys;
int[] values;
String[] tokens;


void setup() {
  size(600,600);
  words = new IntDict();
  
  //read file and create dic
  String[] tokens = {"youre","life","much","better","thought","weak","without","stronger","thought","broke","without","richer","thought","sad","without","laugh","harder","thought","wouldnt","grow","without","wiser","though","helpless","without","smarter","thought","stressed","without","chillin","thought","wouldnt","sell","without","sold","nine","million","survivor","gon","give","gon","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","survivor","gon","give","gon","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","thought","couldnt","breathe","without","inhaling","thought","couldnt","see","without","perfect","vision","thought","couldnt","last","without","lastin","thought","would","die","without","livin","thought","would","fail","without","top","thought","would","wont","stop","thought","would","self","destruct","still","even","years","come","still","gon","survivor","gon","give","yea","gon","stop","gon","work","harder","yea","survivor","gon","make","yea","survive","keep","survivin","yea","survivor","gon","give","yea","gon","stop","gon","work","harder","gon","work","harder","yea","survivor","gon","make","survive","survive","yea","keep","survivin","wishin","best","best","pray","blessed","whoo","whoo","bring","much","success","stress","lots","happiness","better","gon","blast","radio","better","gon","lie","family","better","gon","hate","magazines","better","gon","compromise","christianity","better","know","gon","diss","internet","cause","mama","taught","better","survivor","gon","give","gon","stop","yea","gon","work","harder","survivor","gon","make","survive","keep","survivin","survivor","gon","give","gon","stop","gon","work","harder","survivor","yea","gon","make","survive","keep","survivin","ohh","ohh","ohh","ohh","ohh","darkness","sadness","still","comes","happiness","surround","positive","things","ill","gain","prosperity","survivor","gon","give","gon","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","survivor","gon","give","yea","gon","stop","dont","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","yea","survivor","gon","give","gon","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","survivor","gon","give","gon","stop","gon","work","harder","survivor","gon","make","survive","keep","survivin","survive","fine","survive","sexy","survive","bootylicious","days","like","want","drive","away","pack","bags","watch","shadow","fade","chewed","spit","like","poison","mouth","took","light","drained","look","part","youre","never","gon","ever","take","away","part","youre","never","gon","ever","take","away","throw","sticks","stones","throw","bombs","blows","youre","gon","break","soul","part","youre","never","gon","ever","take","away","wan","throw","phone","away","find","really","ripped","love","cheap","always","tearing","seams","fell","deep","let","look","part","youre","never","gon","ever","take","away","part","youre","never","gon","ever","take","away","throw","sticks","stones","throw","bombs","blows","youre","gon","break","soul","part","youre","never","gon","ever","take","away","look","sparkling","firework","dancing","flame","wont","never","put","glowin","whoa","keep","diamond","ring","dont","mean","nothing","anyway","fact","keep","everything","yeah","yeah","except","part","youre","never","gon","ever","take","away","part","youre","never","gon","ever","take","away","throw","sticks","stones","throw","bombs","blows","youre","gon","break","soul","part","youre","never","gon","ever","take","away","part","away","part","throw","sticks","stones","throw","bombs","blows","youre","gon","break","soul","part","youre","never","gon","ever","take","away","want","baby","got","need","know","got","askin","little","respect","come","home","little","bit","hey","baby","little","bit","get","home","little","bit","mister","little","bit","aint","gon","wrong","youre","gone","aint","gon","wrong","cause","dont","wan","askin","little","respect","come","home","little","bit","baby","little","bit","get","home","little","bit","yeah","little","bit","give","money","askin","return","honey","give","profits","get","home","yeah","baby","get","home","little","bit","yeah","little","bit","ooh","kisses","sweeter","honey","guess","money","want","give","get","home","yeah","baby","whip","respect","little","bit","get","home","little","bit","e","e","find","means","e","e","take","care","tcb","sock","sock","sock","sock","little","respect","sock","sock","sock","sock","whoa","babe","little","bit","little","respect","little","bit","get","tired","little","bit","keep","tryin","little","bit","youre","runnin","foolin","little","bit","aint","lyin","little","bit","respect","come","home","might","walk","respect","little","bit","find","gone","little","bit","forgive","sounds","good","forget","sure","could","say","time","heals","everything","still","waiting","doubt","theres","nothing","left","figure","ive","paid","price","ill","keep","paying","ready","make","nice","ready","back","still","mad","hell","dont","time","round","round","round","late","make","right","probably","wouldnt","could","cause","mad","hell","cant","bring","think","know","said","cant","get","turned","whole","world","around","kind","like","made","bed","sleep","like","baby","regrets","dont","mind","sayin","sad","sad","story","mother","teach","daughter","ought","hate","perfect","stranger","world","words","said","send","somebody","edge","theyd","write","letter","sayin","better","shut","sing","life","ready","make","nice","ready","back","still","mad","hell","dont","time","round","round","round","late","make","right","probably","wouldnt","could","cause","mad","hell","cant","bring","think","ready","back","still","mad","hell","dont","time","round","round","round","late","make","right","probably","wouldnt","could","cause","mad","hell","cant","bring","think","think","forgive","sounds","good","forget","sure","could","say","time","heals","everything","still","waiting","first","afraid","petrified","kept","thinking","could","never","live","without","side","spent","many","nights","thinking","wrong","grew","strong","learned","get","along","youre","back","outer","space","walked","find","sad","look","upon","face","changed","stupid","lock","made","leave","key","known","one","second","youd","back","bother","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","hurt","goodbye","think","crumble","think","lay","die","survive","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","love","give","ill","survive","survive","hey","hey","took","strength","fall","apart","kept","trying","hard","mend","pieces","broken","heart","spent","many","nights","feeling","sorry","used","cry","hold","head","high","see","somebody","new","chained","little","person","still","love","felt","like","dropping","expect","free","im","saving","loving","someone","whos","loving","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","break","goodbye","think","crumble","think","lay","die","survive","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","love","give","ill","survive","survive","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","break","goodbye","think","crumble","think","lay","die","survive","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","love","give","ill","survive","survive","survive","first","afraid","petrified","kept","thinking","could","never","live","without","side","spent","many","nights","thinking","wrong","grew","strong","learned","get","along","youre","back","outer","space","walked","find","sad","look","upon","face","changed","stupid","lock","made","leave","key","known","one","second","youd","back","bother","go","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","hurt","goodbye","think","crumble","think","lay","die","survive","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","love","give","ill","survive","survive","survive","took","strength","fall","apart","kept","trying","hard","mend","pieces","broken","heart","spent","many","nights","feeling","sorry","used","cry","hold","head","high","see","somebody","new","im","chained","little","person","still","love","felt","like","dropping","expect","free","im","saving","loving","someone","whos","loving","go","go","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","hurt","goodbye","think","crumble","think","lay","die","survive","oh","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","love","give","ill","survive","survive","survive","go","go","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","hurt","goodbye","think","crumble","think","lay","die","oh","survive","oh","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","much","love","give","ill","survive","survive","survive","go","go","walk","door","turn","around","cause","youre","welcome","anymore","werent","one","tried","break","goodbye","crumble","yes","lay","die","oh","survive","oh","long","know","love","know","ill","stay","alive","ive","got","life","live","ive","got","much","love","give","ill","survive","yes","ill","survive","yeah","ill","survive","amazing","turn","phrase","weapon","drug","outcast","backlash","somebody","lack","love","start","speaking","nothing","gon","hurt","way","words","settle","neath","skin","kept","inside","sunlight","sometimes","shadow","wins","wonder","would","happen","say","wan","say","let","words","fall","honestly","wan","see","brave","want","say","let","words","fall","honestly","wan","see","brave","wan","see","wan","see","wan","see","wan","see","brave","wan","see","wan","see","wan","see","wan","see","brave","everybody","everybody","stared","enemy","fallen","fear","done","disappearing","bow","mighty","run","stop","holding","tongue","maybe","way","cage","live","maybe","one","days","let","light","show","big","brave","say","wan","say","let","words","fall","honestly","wan","see","brave","want","say","let","words","fall","honestly","wan","see","brave","innocence","history","silence","good","think","would","let","words","anything","empty","tell","truth","say","wan","say","let","words","fall","honestly","wan","see","brave","want","say","let","words","fall","honestly","wan","see","brave","wan","see","wan","see","wan","see","wan","see","brave","wan","see","wan","see","wan","see","wan","see","brave","wan","see","wan","see","wan","see","wan","see","brave","wan","see","wan","see","wan","see"};
  for (int i = 0 ; i < tokens.length; i++) {
    if (words.hasKey(tokens[i]) == true){
      words.increment(tokens[i]);
    }
    else{
      words.set(tokens[i],1);
    }
  }
  
  //font
  /*a = loadFont("ArialMT.vlw");
  b = loadFont("MVBoli.vlw");
  c = loadFont("Gabriola.vlw");
  d = loadFont("InkFree.vlw");
  e = loadFont("SegoeScript.vlw");*/
  
  //array
  //textstyle = new ArrayList<PFont>();
  //textstyle.add(a);
  //textstyle.add(b);
  //textstyle.add(c);
  //textstyle.add(d);
  //textstyle.add(e);
  
  //keys and values
  keys = words.keyArray();
  values = words.valueArray();
  
  //images
  //m = loadImage("music.png");
  //m.resize(width,height);
  
  //frame rate
  //frameRate(0.5);
  
  //println(words);

  background(0);
  //image(m,0,0);
  for (int i=0; i<keys.length;  i++){
    //int style = int(random(0,5));
    int fontsize = int(map(values[i],0,max(values),10,50));
    if ((values[i]==1) && (keys[i].length() > 3)) {
      fontsize = int(map(keys[i].length(),0,15,5,25));
    }
    fill(random(255),random(255),random(255));
    //textFont(textstyle.get(style),fontsize);
    textSize(fontsize);
    text(keys[i], random(width/30,width-width/10), random(height/20, height - height/20));
  }   
}
