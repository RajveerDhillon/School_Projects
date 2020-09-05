package lab9.lab9;

public class semaphore {

    private int value;

    /**
     * Create a semaphore.
     * @param value The initial value of the Semaphore ( must be &ge; 0).
     */
    public semaphore(int value)
    {
        this.value = value;
    }
    /**
     * Increment the number of available resources.  This method never blocks.
     * It may wakeup a Thread waiting for the Semaphore. Dijkstra called this
     * the <em>V</em> operation.  Many also call it <em>signal</em> or
     * <em>release</em>.
     */
    public synchronized void up() 
    {
        value++;
        notify();  
    }
    
    /**
     * Request a resource. If no resources are available, the calling Thread
     * block until a resource controlled by the Semaphore becomes available.
     *  Dijkstra called this
     * the <em>P</em> operation.  Many also call it <em>wait</em> or
     * <em>acquire</em>.
     */
    public synchronized void down() {
      while (value == 0) {
            try {
                wait();
            }
            catch (InterruptedException e) {}
        }
        value--; 
    }

}
