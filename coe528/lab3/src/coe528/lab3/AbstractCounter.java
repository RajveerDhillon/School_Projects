/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;

/**
 *
 * @author Rajveer
 */
public abstract class AbstractCounter implements Counter {
        int value;

	public AbstractCounter() {
		value = 0;
	}
	
	public int getValue() {
		return value;
	}
	public void setValue(int value){
		this.value = value;
	}


    
        @Override
	public void increment() {
		if (value < 9) {
                value = value + 1;
            }
		else {
			value = 0;
			// increment digit to the left
		}
	}

    
        @Override
	public void decrement() {
		if (value > 0) {
                value = value - 1;
            }
		else {
			value = 9;
			// decrement digit to the left
		}
	}

    
        @Override
	public void reset() {
		value = 0;
	}

    
        @Override
	public String count() {
		return Integer.toString(value);
        }
}
  
    


