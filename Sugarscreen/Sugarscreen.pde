import java.util.Random; // Importer le module random

void setup(){ // Créer le premier cercle
  size(600,600);
  background(100);
  fill(255,0,0);
  ellipse(pos.x, pos.y, 50,50);
}

Random rand = new Random(); // Mettre le module à disposition pour le reste
int upperbound = 3; // Déclaration d'un int limite (prendra un random 0-2)
int incrX = rand.nextInt(upperbound)+1; // Incrément de X sera random entre 1-3
int incrY = rand.nextInt(upperbound)+1; // Incrément de Y sera random entre 1-3

PVector pos= new PVector (0,0); // On crée un couple de coordonnées
boolean start=true; // Test pour savoir si c'est le début
void draw(){
  fill(255,0,0);
  ellipse(pos.x, pos.y, 50, 50);
  pos.x+=incrX; // On change la position X du cercle
  pos.y+=incrY; // On change la position Y du cercle
  if (pos.y>575) { incrY*=-1; } // On part dans l'autre sens si on touche un bord
  if (pos.y<25 && start==false) { incrY*=-1; } // Pareil, on check avec start car le carcle commence à 0,0 au début
  if (pos.x>575) { incrX*=-1; } // Pareil
  if (pos.x<25 && start==false) { incrX*=-1; } // Pareil avec start
  if (pos.x>25 && pos.y>25){ // Si on dépasse 25 en X et Y, on est plus aux bords du début
    start=false; // On enlève false pour permettre tous les rebonds
  }
}
