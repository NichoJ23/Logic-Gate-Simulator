enum NodeTypes {SENDING, RECIEVING};

class Node extends GameObject {
  boolean on;
  Draggable parent;
  int offsetX, offsetY;
  int r;
  
  Node(int _offsetX, int _offsetY, Draggable _parent) {
    super(_parent.x + _offsetX, _parent.y + _offsetY);
    offsetX = _offsetX;
    offsetY = _offsetY;
    parent = _parent;
    r = 5;
  }
  
  void display() {
    if (on) {
      fill(255, 0, 0);
    } else {
      fill(150);
    }
    noStroke();
    
    circle(parent.x + offsetX, parent.y + offsetY, r);
  }
}
