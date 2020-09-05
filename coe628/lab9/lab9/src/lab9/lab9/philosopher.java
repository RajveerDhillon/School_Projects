package lab9.lab9;
import java.util.Random;


public class philosopher implements Runnable {
    	
	private Random ran = new Random();
	
	private int semaID;
	
	private semaphore leftF;
	private semaphore rightF;
	
	public philosopher(int id, semaphore left, semaphore right)
	{
		semaID = id;
		leftF = left;
		rightF = right;
	}
	
    @Override
	public void run() 
	{
		try 
		{
			while(true)
			{
				think();
				takeLeftFork();
				takeRightFork();
				eat();
				releaseRightFork();
				releaseLeftFork();
			}
		} 
		catch (InterruptedException ex) 
		{
			System.out.println("Philosopher " + semaID + " was interrupted.\n");
		}
	}
	
	private void think() throws InterruptedException
	{
		System.out.println("Philosopher " + semaID + " is thinking.\n");
		System.out.flush();
		Thread.sleep(ran.nextInt(10));
	}
	
	private void takeLeftFork()
	{
		leftF.up();
		System.out.println("Philosopher " + semaID + " took the left fork but needs 1 more fork.\n");
		System.out.flush();
	}
	
	private void takeRightFork()
	{
		rightF.up();
		System.out.println("Philosopher " + semaID + " took the right fork has both forks.\n");
	}
	
	private void eat() throws InterruptedException
	{
		System.out.println("Philosopher " + semaID + " is eating.\n");
		System.out.flush();
		Thread.sleep(ran.nextInt(10));
	}
	
	private void releaseLeftFork() throws InterruptedException
	{
		leftF.down();
	}
	
	private void releaseRightFork() throws InterruptedException
	{
		rightF.down();
	}
}