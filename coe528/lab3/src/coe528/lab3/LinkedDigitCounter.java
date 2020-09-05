/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;

/**
 *
 * @author Rajveer 
 */
public class LinkedDigitCounter extends AbstractCounter {
    private Counter leftN;
	AbstractCounter absCoun;

	public LinkedDigitCounter() {
		super();
	}

    
    @Override
	public void setLeftNeighbour(Counter count) {
		this.leftN = count;
		absCoun = (AbstractCounter)leftN;
	}

	
    @Override
	public void increment() {
		if (super.getValue() < 9) {
			super.increment();
		} else {
			super.reset();
			leftN.increment();
		}
	}

	
    @Override
	public void decrement() {
		
		if (super.getValue()>0){
			super.decrement();
		}else{
			absCoun.decrement();
			super.setValue(9);
		}
	}

	
    @Override
	public String toString() {
		return Integer.toString(super.getValue());

    }
}

