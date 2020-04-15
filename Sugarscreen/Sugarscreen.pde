void setup()
{ 
  size(600,600);
  background(100);
}

Ball ball=new Ball(50);

void draw()
{
  ball.display();
  ball.move();
  ball.stayIn();
}

class Ball // On crée une classe qui s'appelle Ball
{
  // Les objets crées avec cette classe auront tous ces "variables membres"
  PVector pos= new PVector(width/2, height/2);
  PVector spd;
  int size;
  // Les classes ont une fonction spéciale appelée "Constructeur" qui donne toutes les valeurs de base aux variables un peu comme le setup
  Ball(int _size) // A la création on demandera la taille de la balle (le "_" permet de différencier la variable membre size du paramètre _size)
  {
    pos= new PVector(width/2, height/2);
    size= _size;
    spd= new PVector(1,2);
  }
  
  // display est une fonction membre
  // display doit afficher un cercle aux coordonnées pos de taille size par size
  void display()
  {
    fill(255,0,0);
    ellipse(pos.x, pos.y, size,size);
  }
  
  void move()
  {
    pos.x+=spd.x;
    pos.y+=spd.y;
  }
  
  void stayIn()
  {
    if (pos.y>575) { spd.y*=-1; } // On part dans l'autre sens si on touche un bord
    if (pos.y<25) { spd.y*=-1; } // Pareil
    if (pos.x>575) { spd.x*=-1; } // Pareil
    if (pos.x<25) { spd.x*=-1; } // Pareil
  }
}
