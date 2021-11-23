class Inventory
{

  Inventory[] InventorySlots = new Inventory[8];
  int spaceBetweenSlots = 120;


  void drawInventory()
  {
    fill(0, 100);
    rect(0, 0, 975, 160, 15); //black bar inventory

    for (int i = 0; i<InventorySlots.length; i++)
    {
      rect(10 + (i*spaceBetweenSlots), 40, 110, 110, 20);
    }
    textSize(25);
    fill(255);
    text ("Inventory:", 10, 25);
  }
}
