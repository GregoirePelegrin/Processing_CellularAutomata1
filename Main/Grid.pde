class Grid{
    ArrayList<Line> lines;
    int currLine;

    Grid(boolean[] _s, int nbLines){
        this.lines = new ArrayList<Line>();
        this.currLine = 0;

        this.populate(_s, nbLines);
    }

    void display(){
        for(Line line : this.lines) line.display();
    }
    void populate(boolean[] _s, int nbLines){
        float tempHeight = height/nbLines;
        this.lines.add(new Line(tempHeight/2, _s, tempHeight));
        boolean[] tempFalse = new boolean[_s.length];
        for(int i=0; i<_s.length; i++) tempFalse[i] = false;
        for(int i=1; i<nbLines; i++){
            this.lines.add(new Line((i+0.5)*tempHeight, tempFalse, tempHeight));
        }
    }
    void update(){
        if(this.currLine < this.lines.size()-1){
            for(int i=0; i<this.lines.get(this.currLine).cells.size(); i++){
                boolean s1;
                boolean s2;
                boolean s3;

                if(i == 0){
                    s1 = false;
                    s3 = this.lines.get(this.currLine).cells.get(i+1).state;
                } else if(i == this.lines.get(this.currLine).cells.size()-1){
                    s1 = this.lines.get(this.currLine).cells.get(i-1).state;
                    s3 = false;
                } else {
                    s1 = this.lines.get(this.currLine).cells.get(i-1).state;
                    s3 = this.lines.get(this.currLine).cells.get(i+1).state;
                }
                s2 = this.lines.get(this.currLine).cells.get(i).state;

                boolean result = false;
                if(s1 && !s2 && !s3) result = true;
                else if(!s1 && s2 && s3) result = true;
                else if(!s1 && s2 && !s3) result = true;
                else if(!s1 && !s2 && s3) result = true;
                this.lines.get(this.currLine + 1).cells.get(i).state = result;
            }
        }
        this.currLine ++;
    }
}