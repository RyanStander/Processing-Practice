boolean isPointInCircle( float pointX, float pointY, float circleX, float circleY, float radius )
{
  float dX = pointX - circleX;
  float dY = pointY - circleY;

  return dX * dX + dY * dY < radius;
}


boolean isPointInRectangle(float pointX,         float pointY,
                           float rectangleX,     float rectangleY,
                           float rectangleWidth, float rectangleHeight)
{

  return     pointX >= rectangleX
          && pointX <= rectangleX + rectangleWidth
          && pointY >= rectangleY
          && pointY <= rectangleY + rectangleHeight;  
}
