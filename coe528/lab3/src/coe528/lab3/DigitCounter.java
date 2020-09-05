/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;

/**
 *
 * @author Rajveer
 */
public class DigitCounter extends AbstractCounter {
    	private int val;

	public DigitCounter() {
		super();
		val = super.getValue();
	}

	
            @Override
	public void increment() {
		if (val < 9) {
                val++;
            }
		else {
			val = 0;

		}
	}
	
	

	
            @Override
	public void reset() {
		val=0;
	}

	
            @Override
	public String toString() {
		return Integer.toString(val);
	}

	
            @Override
	public void setLeftNeighbour(Counter c) {
		

}
}

