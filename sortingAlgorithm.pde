float []tableau;
int indice; 


void setup() {
  size(400, 200);
  tableau = new float[width]; //
  for (int i = 0; i < tableau.length; i++)
    tableau[i] = random(height);
}

void tri_bulle(float[]tableau){
  for(int i = 0; i < tableau.length - 1 ; i++){
            if(tableau[i] > tableau[i+1]){
               float temp = 0;
                temp = tableau[i];
                tableau[i] = tableau[i+1];
                tableau[i+1] = temp;
            }
        }
}


//La fonction draw est une fonction interne à Processing 
//C'est une boucle infinie qui draw sans pause. 
void draw() {
  background(0);
  if(indice < tableau.length){
  tri_bulle(tableau);
  indice++; 
   
  }
   //On dessine les lignes 
  for (int i = 0; i < tableau.length; i++) {
    stroke(0,255,0);
    line(i, height, i, height - tableau[i]);
  }
  
   if(indice == tableau.length){
    println("Lignes triées: "+indice);
    noLoop();
  }
 
}
    
