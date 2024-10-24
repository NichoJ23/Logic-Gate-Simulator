void mousePressed() {
  for (GameObject obj: objects) {
    if (obj instanceof Draggable) {
      Draggable d = (Draggable) obj;
      d.checkDragToggle();
    }
  }
  
}
