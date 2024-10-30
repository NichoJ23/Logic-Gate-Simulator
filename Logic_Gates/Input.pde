void mousePressed() {
  for (GameObject obj: objects) {
    if (obj instanceof Draggable) {
      Draggable d = (Draggable)obj;
      d.checkDragToggle();
    } else if (obj instanceof Node) {
      Node n = (Node)obj;
      n.checkClick();
    }
  }
  
}
