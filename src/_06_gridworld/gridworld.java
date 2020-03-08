package _06_gridworld;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworld {
	public static void main(String[] args) {

	World world = new World();
	
	for(int x = 0; x<10; x++) {
		for(int y = 0; y<10; y++) {
			Location location = new Location(x, y);
			Flower flower = new Flower();
			world.add(location, flower);
		}
	}
	world.show();
	}
}

