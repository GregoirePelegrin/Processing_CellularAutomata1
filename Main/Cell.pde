class Cell{
    Point center;
    float cellHeight;
    float cellWidth;
    boolean state;

    Cell(Point _c, float _cw, float _ch, boolean _st){
        this.center = _c;
        this.cellHeight = _ch;
        this.cellWidth = _cw;
        this.state = _st;
    }

    void display(){
        stroke(127, 200);
        if(this.state) fill(255);
        else fill(0);
        rect(this.center.x, this.center.y, this.cellWidth, this.cellHeight);
    }
}