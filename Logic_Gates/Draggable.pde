class Draggable {
  int x, y;
  int w, h;
  int offsetX, offsetY;
  boolean dragging;
  
  Draggable(int _x, int _y, int _w, int _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    dragging = false;
  }
  
  boolean isHovered() {
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
  
  void checkDragToggle() {
    if (!dragging) {
      dragging = isHovered();
      offsetX = mouseX - x;
      offsetY = mouseY - y;
    } else {
      dragging = false;
    }
  }
  
  void drag() {
    if (dragging) {
      x = mouseX - offsetX;
      y = mouseY - offsetY;
    }
  }
  
  void update(){};
  void display(){};
}
