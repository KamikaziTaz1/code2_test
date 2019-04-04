String text = "Good evening people, Matt fuck the government";
int n = 3;
ArrayList<String> ngrams = new ArrayList<String>();
int gramCounter;

void setup(){
  int ngramSize = text.length()/n;
  
  //ngrams = new String[ngramSize];
  
  for(int i = 0; i<text.length()-1; i+=n){
    String gram = text.substring(i, i+n);
    
    if(!ngrams.contains(gram)){
     gramCounter = 1;
    }else{
      gramCounter ++;
    }
    ngrams.add(gram);
    println(gram, gramCounter, '\n');
    //ngrams[i] = gram;
    //println(ngrams[i]);
  }
}
