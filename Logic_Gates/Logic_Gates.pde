
ArrayList<GameObject> objects;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  
  objects = new ArrayList<GameObject>();
  objects.add(new LogicGate(300, 300, 100, 50, GateTypes.AND));
  objects.add(new LogicGate(500, 300, 100, 50, GateTypes.AND));
}

void draw() {
  background(255);
  
  for (GameObject obj: objects) {
    obj.update();
    obj.display();
  }
}
