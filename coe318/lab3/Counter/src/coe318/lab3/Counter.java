/**
 *
 * @author Rajveer Dhillon
 */
package coe318.lab3;
public class Counter {
    //Instance variables here
    int value, base;
    Counter left;
    public Counter(int modulus, Counter left) {
        value = modulus;
        this.left = left;
        base = 0;
    }


    /**
     * @return the modulus
     */
    public int getModulus() {
        return value;
    }

    /**
     * Returns the Counter to the left attached to this
     * Counter.  Returns null if there is no Counter
     * to the left.
     * @return the left
     */
    public Counter getLeft() {
        return left;
    }

    /**
     * @return the digit
     */
    public int getDigit() {
        return base;
    }

    /**
     * @param digit the digit to set
     */
    public void setDigit(int digit) {
        base = digit;
    }

    /**
     * Increment this counter.  If it rolls over,
     * its left Counter is also incremented if it
     * exists.
     */
    public void increment() {
        base++;
        if(base == value){
            base = 0;
            if (left != null){
                left.increment();
            }
        }
    }

    /** Return the count of this Counter combined
     * with any Counter to its left.
     *
     * @return the count
     */
    public int getCount() {
        if (left != null){
            return left.getCount()*value + base;
        }
        return base;
    }

    /** Returns a String representation of the Counter's
     * total count (including its left neighbour).
     * @return the String representation
     */
    @Override
    public String toString() {
        //DO NOT MODIFY THIS CODE
        return "" + getCount();
    }

}