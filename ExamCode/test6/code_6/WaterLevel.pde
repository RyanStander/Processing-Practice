

class WaterLevel {
    private float level;
    
    public WaterLevel( int newLevel ) {
        level = newLevel;
    }
    
    public float getLevel() {
        return level;
    }
    
    public void display() {
        noStroke();
        fill( blue );
        rect( 0, height - level, width, level );
        strokeWeight( 2 );
        stroke( white );
        fill( cyan );
        for ( int x = 0 ; x < width +20; x += 20 ) {
            arc( x, height - level, 20, 10, 0, PI, OPEN );
        }
    }
    
    public void changeLevel( float deltaLevel ) {
        level += deltaLevel;
    }
}    
    
    
