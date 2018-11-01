
//Collision between two Rectangles
boolean rectRect(float r1x,float r1y,float r1w,float r1h,float r2x,float r2y,float r2w,float r2h) {
  if(r1x+r1w/2>=r2x-r2w/2 &&
     r1x-r1w/2<=r2x+r2w/2 &&
     r1y+r1h/2>=r2y-r2h/2 &&
     r1y-r1h/2<=r2y+r2h/2   ) {
    return true;
  }
  return false;
}
