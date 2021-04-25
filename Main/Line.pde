class Line{
    float y;
    ArrayList<Cell> cells;
    float cellHeight;

    Line(float _y, boolean[] _s, float _ch){
        this.y = _y;
        this.cellHeight = _ch;
        this.cells = new ArrayList<Cell>();

        this.populate(_s);
    }

    void display(){
        for(Cell cell : this.cells) cell.display();
    }
    void populate(boolean[] _s){
        float cellWidth = width/_s.length;
        for(int i=0; i<_s.length; i++){
            this.cells.add(new Cell(new Point((i+0.5)*cellWidth, this.y), cellWidth, this.cellHeight, _s[i]));
        }
    }
}