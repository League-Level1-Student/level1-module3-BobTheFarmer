package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import javax.swing.JOptionPane;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworld {
	public static void main(String[] args) {
	Random random = new Random();
	World world = new World();
	
//	for(int x = 0; x<10; x++) {
//		for(int y = 0; y<10; y++) {
//			Location location = new Location(x, y);
//			Flower flower = new Flower();
//			world.add(location, flower);
//		}
//	}
	
//	Location location = new Location(random.nextInt(10), random.nextInt(10));
//	Bug bug = new Bug();
//	world.add(location, bug);
//	
	int x1 = random.nextInt(10);
	int y1 = random.nextInt(10);
	Location location2 = new Location(x1, y1);
	Bug bug2 = new Bug();
	world.add(location2, bug2);
	bug2.setColor(Color.blue);
	bug2.turn();
	bug2.turn();
	
	
	Flower flower = new Flower();
	Location locationA1 = new Location(x1, y1-1);
	world.add(locationA1, flower);
	
	Flower flower2 = new Flower();
	Location locationA2 = new Location(x1, y1+1);
	world.add(locationA2, flower2);
	
	
	world.show();
	}
}

