PImage p;
PImage c;
PImage f;
String vowels="aeiouy";
String [] words;
String [] sentence;
char[] cArray2;
void setup() {
  size(600, 450);
  background(0, 0, 10);
  fill(255);
  p = loadImage("PandPpic.jpg");
  p.resize(150, 195);
  c = loadImage("ccpic.jpg");
  c.resize(150, 195);
  f = loadImage("frankpic.jpg");
  f.resize(150, 195);
  textSize(15);
  text("Top 3 Books from the Project Gutenberg Site", 150, 50);
  image(c, 50, 100);
  image(p, 225, 100);
  image(f, 400, 100);
}
////Here
void draw() {
  if (mousePressed && 50<=mouseX && mouseX<=200 && 100<=mouseY && mouseY<=295) {
    String[] lines = loadStrings("CC.txt");
    String t = join(lines, " ");
    String s=t.toLowerCase();
    words=splitTokens(s, ",.?!: ");
    sentence=splitTokens(s, "[\\!.]");
    cArray2=s.toCharArray();
    StringParser sp=new StringParser();
    println("A Christmas Carol in Prose; Being a Ghost Story of Christmas by Charles Dickens (3309)");
    fill(0);
    rect(0,300,600,200);
    fill(255);
    text("Words: " + sp.countWords(),50,330);
    text("Vowels: " + sp.countVowels(),50,350);
    text("Syllables: " + sp.countSyllablesHelper(words),50,370);
    text("Sentences: " + sp.countSentences(),50,390);
    text("Flesch: " + sp.flesch(),50,410);
    text("You are reading at a " +sp.grade() +"!" ,50,430);
    
  } else if (mousePressed && 225<=mouseX && mouseX<=375 && 100<=mouseY && mouseY<=295) {
    String[] lines = loadStrings("PandP.txt");
    String t = join(lines, " ");
    String s=t.toLowerCase();
    words=splitTokens(s, ",.?!: ");
    sentence=splitTokens(s, "[\\!.]");
    cArray2=s.toCharArray();
    StringParser sp=new StringParser();
    println("Pride and Prejudice by Jane Austen (1518)");
    fill(0);
    rect(0,300,600,200);
    fill(255);
    text("Words: " + sp.countWords(),50,330);
    text("Vowels: " + sp.countVowels(),50,350);
    text("Syllables: " + sp.countSyllablesHelper(words),50,370);
    text("Sentences: " + sp.countSentences(),50,390);
    text("Flesch: " + sp.flesch(),50,410);
    text("You are reading at a " +sp.grade() +"!" ,50,430);
    
  } else if (mousePressed && 400<=mouseX && mouseX<=550 && 100<=mouseY && mouseY<=295) {
    String[] lines = loadStrings("frank.txt");
    String t = join(lines, " ");
    String s=t.toLowerCase();
    words=splitTokens(s, ",.?!: ");
    sentence=splitTokens(s, "[\\!.]");
    cArray2=s.toCharArray();
    StringParser sp=new StringParser();
    println("Frankenstein; Or, The Modern Prometheus by Mary Wollstonecraft Shelley (1121)");
    fill(0);
    rect(0,300,600,200);
    fill(255);
    text("Words: " + sp.countWords(),50,330);
    text("Vowels: " + sp.countVowels(),50,350);
    text("Syllables: " + sp.countSyllablesHelper(words),50,370);
    text("Sentences: " + sp.countSentences(),50,390);
    text("Flesch: " + sp.flesch(),50,410);
    text("You are reading at a " +sp.grade() +"!" ,50,430);
  }
}