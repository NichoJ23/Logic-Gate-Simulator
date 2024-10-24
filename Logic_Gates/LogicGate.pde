enum GateTypes {AND, OR, NOT};

class LogicGate extends Draggable {
  GateTypes type;
  
  LogicGate(int x, int y, int w, int h, GateTypes _type) {
    super(x, y, w, h);
    type = _type;
  }
  
  void update() {
    drag();
  }
  
  void display() {
    switch (type) {
      case AND:
        drawANDGate();
        break;
      default:
        break;
    }
  }
  
  void drawANDGate() {
    fill(255);
    stroke(0);
    strokeWeight(10);
    
    rect(x, y, w, h);
  }
}
