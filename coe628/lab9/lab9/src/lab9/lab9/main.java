package lab9.lab9;

//Rajveer Dhillon
//500777569
public class main {

    private static final int num_Philos = 4;

    public static void main(String[] args) {

        semaphore[] forks = new semaphore[num_Philos];
	philosopher[] philosophers = new philosopher[num_Philos];	
	for(int i = 0; i < num_Philos; i++)
	{
		forks[i] = new semaphore(0);
	}	
	for(int i = 0; i < num_Philos; i++)
	{
		philosophers[i] = new philosopher(i, forks[i], forks[(i+1) % num_Philos]);
		new Thread(philosophers[i]).start();
        }
    }
}
