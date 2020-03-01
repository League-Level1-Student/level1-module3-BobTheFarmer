package _01_intro_to_static;

public class Athlete {

    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

Athlete (String name, int speed, int bibNumber){
    this.name = name;
    this.speed = speed;
    this.bibNumber = bibNumber;
}


public static void main(String[] args) {
    //create two athletes      //print their names, bibNumbers, and the location of their race. 
	Athlete a1 = new Athlete("Billy", 21, 21);
    System.out.println(a1.name);
    System.out.println(a1.bibNumber);
    System.out.println(a1.raceLocation);
    Athlete a2 = new Athlete("Bob", 73, 87);
    System.out.println(a2.name);
    System.out.println(a2.bibNumber);
    System.out.println(a2.raceLocation);
}
}