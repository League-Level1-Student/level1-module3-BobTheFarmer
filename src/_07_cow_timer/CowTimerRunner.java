package _07_cow_timer;

import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;

import _03_jukebox.Jukebox;

public class CowTimerRunner {
	public static void main(String[] args) throws InterruptedException {
		CowTimer timer = new CowTimer(0);
		String sec = JOptionPane.showInputDialog("How many seconds until cow alarm?");
		int seconds = Integer.parseInt(sec);
		timer.setTime(seconds);
		timer.start();
		
		//new CowTimer().start();
	}
}
		/* Make a CowTimer, set its time and start it.
		 * Use a short delay (seconds) when testing, then try with longer delays */
		
	
