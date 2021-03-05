//Use LEFT key for deacrease vertical sections           ||         Используйте стрелку влево для уменьшения количества вертикальных секций
//Use RIGHT key for increase vertical sections           ||         Используйте стрелку влево для увеличения количества вертикальных секций
//Use SHIFT key for redraw scene                         ||         Используйте клавишу SHIFT для сброса сетки
//Use UP key for increase horizontal sections            ||         Используйте стрелку вверх для увеличения количества горизонтальных секций
//Use DOWN key for increase horizontal sections          ||         Используйте стрелку вниз  для уменшения  количества горизонтальных секций
//*******************************************************************************************************************************************
//Developed by Ernest Matskevich


int horizontal;
int vertical;
float i;
float c;


void setup() {
  size(600, 800);
  
}

void draw(){
  
  println("Horizontal: "+str(horizontal), "Vertical: "+str(vertical));
  
  if (horizontal == 0){
    horizontal = 1;}
  if (vertical == 0){
    vertical = 1;}
   
  background(0);
  stroke(255,0,0); // цвет
// сетка  


  for (i = 1; i < height; i = i + height/horizontal){    
    line(0,i,width,i);
  }
    
  for (c = 1; c < width; c = c + width/vertical){
    line( c, 0, c, height);}    
  }



void keyPressed()
{
    if (key == CODED) {
        if (keyCode == RIGHT) {
            vertical += 1;
        } 
    else if (keyCode == LEFT) {
            vertical -= 1;
            
        } 
    else if (keyCode == UP) {
            horizontal += 1;
            
        } 
    else if (keyCode == DOWN) {
            horizontal -= 1;
            
        }
        
    else if (keyCode == SHIFT){ // когда нажалась SHIFT - сетка стирается/программа начинается с начала и можно ввести заново hor и vert
      horizontal = 1;
      vertical = 1;
          
    }
         
} }
  
