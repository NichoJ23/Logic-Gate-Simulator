
boolean isConnectingNodes;
Node nodeSelected;

ArrayList<GameObject> objects;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  
  isConnectingNodes = false;
  
  objects = new ArrayList<GameObject>();
  objects.add(new LogicGate(300, 300, 100, 50, GateTypes.AND));
  objects.add(new LogicGate(500, 300, 100, 50, GateTypes.AND));
  for (int i = 0; i < objects.size(); i++) {
    if (objects.get(i) instanceof LogicGate) {
      LogicGate l = (LogicGate)objects.get(i);
      for (int j = 0; j < l.inputs.length; j++) {
        objects.add(l.inputs[j]);
      }
      objects.add(l.output);
    }
  }
}

void draw() {
  background(255);
  
  for (GameObject obj: objects) {
    obj.update();
    obj.display();
  }
  
  if (isConnectingNodes) {
    stroke(0);
    strokeWeight(5);
    int nodeX = nodeSelected.offsetX + nodeSelected.parent.x;
    int nodeY = nodeSelected.offsetY + nodeSelected.parent.y;
    line(nodeX, nodeY, mouseX, mouseY);
  }
  
  for (GameObject obj: objects) {
    if (obj instanceof Node) {
      Node n = (Node)obj;
      if (n.connections.size() > 0) {
        
      }
    }
  }
}
