/* Fábián Gábor
 * CXNU8T
 */
/* 
Készítsen diszkrét szakaszhalmazt megjelenítő alkalmazást statikusan és dinamikusan!

(Statikus: első kattintásra nem történik semmi, második kattintásra megjelenik az első és a második kattintás által definiált egyértelmű szakasz.
Dinamikus: első kattintásra nem történik semmi, a második kattintásig folyamatosan megjelenik az az egyértelmű szakasz, melyet az első kattintás és az egér aktuális pozíciója definiál. Második kattintásra megjelenik az első és a második kattintás által definiált egyértelmű szakasz.)
*/
Table table;
boolean closed = false;

void setup() {
    size(640, 480);
    
    table = new Table();    
    table.addColumn("x");
    table.addColumn("y");
}

void draw() {
    background(204);
    drawLines(table);
}
 //<>//
void drawLines(Table table) {    
    int x, y, x0, y0, i;
    x = 0;
    y = 0;
    
    for (i = 0; i < table.getRowCount()-1; i++) {
        x0 = table.getRow(i).getInt("x");
        y0 = table.getRow(i).getInt("y");
        
        x = table.getRow(i+1).getInt("x");
        y = table.getRow(i+1).getInt("y");
        
        line(x,y,x0,y0);                        // temp solution
    }
    
    if (i > 1 && closed) {
        x0 = table.getRow(0).getInt("x");
        y0 = table.getRow(0).getInt("y");
        
        line(x,y,x0,y0);                        // temp solution
    }
}

void mousePressed() {
    TableRow newRow = table.addRow();    
    newRow.setInt("x", mouseX);
    newRow.setInt("y", mouseY); //<>//
}

void keyPressed() {
    closed = !closed;
}
