public class StringParser {
  
  public StringParser() {
  }
  public int countWords() {
    return words.length;
  }
  public int countVowels() {
    int count = 0;
    for (char c : cArray2) {
      if (c == 'a' || c == 'e' || c == 'i' ||c == 'o' || c == 'u' || c == 'y') {
        count++;
      }
    }
    return count;
  }
  
  public int countSyllablesHelper(String [] w) {
    int countSyll=0;
    for (String s : w) {
      countSyll+=countSyllables(s);
    }
    return countSyll;
  }
  public int countSyllables(String word) {
    int numSyll = 0;
    boolean newSyll = true;
    char[] wordArray = word.toCharArray();

    for (int i = 0; i < wordArray.length; i++) {
      if (i == wordArray.length-1 && wordArray[i] == 'e' && newSyll && numSyll > 0) {
        numSyll--;
      } 
      
      if (newSyll && vowels.indexOf(wordArray[i]) >= 0) {
        newSyll = false;
        numSyll++;
        
      } else if (vowels.indexOf(wordArray[i]) < 0) {
        newSyll = true;
      }
    }
    return numSyll;
  }

  public int countSentences() {
    return sentence.length;
  }
  
  private double flesch () {
   double f=0;
   double s= countSentences();
   double w= countWords();
   double syl=countSyllablesHelper(words);
   f=206.835-(1.015*(w/s))-(84.6 *(syl/w));
    return f;
    }
    public String grade() {
    String grade="";
    double f=flesch();
    if(f>=90){
      grade="5th Grade Level";
    }
    else if(f<90&&f>=80){
      grade="6th Grade Level";
    }
    else if(f<80&&f>=70){
      grade="7th Grade Level";
    }
    else if(f<70&&f>=60){
      grade="8th/9th Grade Reading Level";
    }
    else if(f<60&&f>=50){
      grade="10th-11th Grade Level";
    }
    else if(f<50&&f>=30){
      grade="College Level";
    }
    else{
      grade="Graduate Level";
    }

    return grade;
  }

  }