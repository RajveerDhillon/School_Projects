/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;
/**
 *
 * @author Rajveer
 */

public class Odometer {
    private Counter listCounter[];
	private DigitCounter digCoun;
	private int size;

	public Odometer(int size) {
		this.size = size;
		if (size == 0) {
                throw new IllegalArgumentException("Odometer can't have a size of 0.");
            }
		listCounter = new Counter[size];
		digCoun = new DigitCounter();

		// create objects
		for (int i = 0; i < size; i++) {
			if (i == size - 1) {
				listCounter[i] = digCoun;
				break;
			}
			listCounter[i] = new LinkedDigitCounter();
		}
		// set left neighbours
		for (int i = 0; i < size; i++) {
			if (i == size - 1) {
                        break;
                    }
			listCounter[i].setLeftNeighbour(listCounter[i + 1]);
		}

	}

	public void increment() {
		listCounter[0].increment();
	}

	public void decrement() {
		listCounter[0].decrement();
	}
	public void reset(){
		for (Counter c:listCounter){
			c.reset();
		}
	}
        public String count(){
            for (int i = size - 1; i >= 0; i--) {
			System.out.print(listCounter[i].toString());
		}
		return " ";
        }

}


