/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Name: Rajveer Dhillon
 * Student ID: 500777569

I think since I make 2 instance classes of resistors, It adds to it's label 2 times, making
it R2 instead of R1.
 */
package coe318.lab7;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Rajveer
 */
public class ResistorTest {
    
    public ResistorTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of toString method, of class Resistor.
     */
    @Test
    public void testToString() {
        System.out.println("toString");
        Node n1 = new Node(0);
        Node n2 = new Node(1);
        Resistor instance = new Resistor(n1, n2, 3);
        String expResult = "R2 0 1 3.0";
        String result = instance.toString();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getNodes method, of class Resistor.
     */
    @Test
    public void testGetNodes() {
        System.out.println("getNodes");
        Node n1 = new Node(0);
        Node n2 = new Node(1);
        Resistor instance = new Resistor(n1, n2, 3.0);
        Node[] expResult = {n1, n2};
        Node[] result = instance.getNodes();
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
