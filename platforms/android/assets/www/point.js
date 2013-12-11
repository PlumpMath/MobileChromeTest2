var Point = function(x, y) {
  this.x = x;
  this.y = y;
  this.distanceFrom = function(otherPoint) {
    return Math.sqrt(Math.pow(otherPoint.x - this.x, 2) +
        Math.pow(otherPoint.y - this.y, 2));
  };
};