Grid grid;

void setup(){
    size(600, 600);
    frameRate(30);
    rectMode(CENTER);

    boolean[] bools = {false, false, false, false, false, false, false, false, false, false, false,
                        false, false, false, false, false, false, false, false, false, false, false,
                        true,
                        false, false, false, false, false, false, false, false, false, false, false,
                        false, false, false, false, false, false, false, false, false, false, false};

    grid = new Grid(bools, 100);
}

void draw(){
    background(0);
    grid.display();
}

void keyPressed() {
    if(key == '+') grid.update();
}
