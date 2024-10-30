enum GateTypes {AND, OR, NOT};

class LogicGate extends Draggable {
  GateTypes type;
  Node[] inputs;
  Node output;
  
  LogicGate(int x, int y, int w, int h, GateTypes _type) {
    super(x, y, w, h);
    type = _type;
    
    setupNodes();
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
  
  void setupNodes() {
    int numInputs = 0;
    switch(type) {
      case AND:
        numInputs = 2;
        break;
      case OR:
        numInputs = 2;
        break;
      case NOT:
        numInputs = 1;
        break;
      default:
        numInputs = 1;
        break;
    }
    
    inputs = new Node[numInputs];
    for (int i = 0; i < numInputs; i++) {
      Node n = new Node(-w/2, -h*3/4 + h/(numInputs)*(i+1), this, NodeTypes.RECIEVING);
      inputs[i] = n;
    }
    
    output = new Node(w/2, 0, this, NodeTypes.SENDING);
  }
}
