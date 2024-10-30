enum NodeTypes {SENDING, RECIEVING};

class Node extends GameObject {
  boolean on;
  Draggable parent;
  NodeTypes type;
  ArrayList<Node> connections;
  int offsetX, offsetY;
  int r;
  
  Node(int _offsetX, int _offsetY, Draggable _parent, NodeTypes _type) {
    super(_parent.x + _offsetX, _parent.y + _offsetY);
    type = _type;
    connections = new ArrayList<Node>();
    offsetX = _offsetX;
    offsetY = _offsetY;
    parent = _parent;
    r = 15;
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
  
  boolean isHovered() {
    return dist(mouseX, mouseY, parent.x + offsetX, parent.y + offsetY) <= r;
  }
  
  void checkClick() {
    if (isHovered()) {
      if (isConnectingNodes) {
        
        if (nodeSelected.type != type) {
          connections.add(nodeSelected);
          nodeSelected = null;
          isConnectingNodes = false;
        }
      } else {
        isConnectingNodes = true;
        nodeSelected = this;
      }
      
      parent.dragging = false;
    } 
  }
}
