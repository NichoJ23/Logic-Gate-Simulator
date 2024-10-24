
ArrayList<Draggable> objects;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  
  objects = new ArrayList<Draggable>();
  objects.add(new LogicGate(300, 300, 100, 50, GateTypes.AND));
}

void draw() {
  background(255);
  
  for (Draggable obj: objects) {
    obj.update();
    obj.display();
  }
}
