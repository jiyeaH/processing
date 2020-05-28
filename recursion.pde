void setup() {
  size(700,700);
}

void draw() {
  background(#FFFACD);
  strokeWeight(1);
  translate(width/2,height/2);
  draw_fractal(500);
}

void draw_fractal(float r) {
  ellipse(0, 0, r, r);
  if (r < 100) 
    return;
    
    stroke(255,0,0);
    pushMatrix();
    translate(0,-r/4);
    draw_fractal(r/2);
    popMatrix();

    stroke(0,255,0);
    pushMatrix();
    translate(0,r/4);
    draw_fractal(r/2);
    popMatrix();
    
    stroke(0,0,255);
    pushMatrix();
    translate(r/4,0);
    draw_fractal(r/2);
    popMatrix();
    
    stroke(0);
    pushMatrix();
    translate(-r/4,0);
    draw_fractal(r/2);
    popMatrix();
    

  
}