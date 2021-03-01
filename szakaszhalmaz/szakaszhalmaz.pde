/* Fábián Gábor
 * CXNU8T
 */
/* 
Készítsen diszkrét szakaszhalmazt megjelenítő alkalmazást statikusan és dinamikusan!

(Statikus: első kattintásra nem történik semmi, második kattintásra megjelenik az első és a második kattintás által definiált egyértelmű szakasz.
Dinamikus: első kattintásra nem történik semmi, a második kattintásig folyamatosan megjelenik az az egyértelmű szakasz, melyet az első kattintás és az egér aktuális pozíciója definiál. Második kattintásra megjelenik az első és a második kattintás által definiált egyértelmű szakasz.)
*/
Table table;

void setup() {
    size(640, 480);
    
    table = new Table();    
    table.addColumn("x");
    table.addColumn("y");
}

void draw() {
    background(204);
}
 //<>//
void mousePressed() {
    TableRow newRow = table.addRow();    
    newRow.setInt("x", mouseX);
    newRow.setInt("y", mouseY); //<>//
}
