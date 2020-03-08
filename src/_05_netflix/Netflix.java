package _05_netflix;

public class Netflix {
	public static void main(String[] args) {
		Movie movie1 = new Movie("Endgame", 4);
		Movie movie2 = new Movie("The Bee Movie", 218048080);
		Movie movie3 = new Movie("Every Sequel Ever", -89289);
		Movie movie4 = new Movie("Infinity War", 5);
		Movie movie5 = new Movie("3StarMovie", 3);
		NetflixQueue queue = new NetflixQueue();
		queue.addMovie(movie1);
		queue.addMovie(movie2);
		queue.addMovie(movie3);
		queue.addMovie(movie4);
		queue.addMovie(movie5);
		movie1.getTicketPrice();
		queue.printMovies();
		queue.sortMoviesByRating();
		System.out.println("the best movie is " + queue.getBestMovie());
		System.out.println("the second best movie is " + queue.getMovie(1));
	}
}
