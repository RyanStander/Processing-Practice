class Droplet
{
    float x, y, size;
    
    public Droplet( float newX, float newY, float newSize ) {
        x = newX;
        y = newY;
        size = newSize;
    }
    
    public void move() {
        y++;
    }

    public void reset() {
        y = -size;
    }
    public float getY() {
        return y;
    }
    
    public void display() {
        strokeWeight( 2 );
        stroke( black );
        fill( blue );
        triangle( x - size / 2, y, x + size / 2, y, x, y - size );
        arc( x, y - size / 10, size, size, 0, PI, OPEN );
    }
}
