/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package COE318.Lab2ComplexNumber;

/**
 * ComplexNumber models a complex number expressed
 * in rectangular form (real and imaginary parts).
 * It is an <em>immutable</em> object.
 *
 * @author r9dhillo
 */
public class ComplexNumber {
  //Instance variable declarations
    private double re, im;
    

  /**
   * Construct a ComplexNumber given its
   * real and imaginary parts.
   * @param re The real component
   * @param im The imaginary component
   */
  public ComplexNumber(double re, double im) {
      //Initialize the instance variables
      this.re = re;
      this.im = im;
      
  }

  /**
   * Returns the real component.
   * @return the real
   */
  public double getReal() {
      return re;  //A stub: to be fixed
  }

  /**
   * Returns the imaginary component.
   * @return the imaginary
   */
  public double getImaginary() {
      return im;  //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber number that is
   * the negative of <em>this</em>.  Note: the
   * original ComplexNumber is <b>NOT</b>
   * modified.
   * @return -this
   */
  public ComplexNumber negate() {
      return new ComplexNumber(-re, -im); //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber that is the
   * sum of <em>this</em>  and <em>z</em>.
   * Note: the  original ComplexNumber is
   * <b>NOT</b> modified.
   * @param z
   * @return this + z
   */
  public ComplexNumber add(ComplexNumber z) {
      
      return new ComplexNumber(re+z.re, im+z.im);  //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber that is the
   * difference of <em>this</em>  and <em>z</em>.
   * Note: the  original ComplexNumber is
   * <b>NOT</b> modified.
   * @param z
   * @return this + z
   */
  public ComplexNumber subtract(ComplexNumber z) { 
      return new ComplexNumber (re-z.re, im-z.im);  //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber that is the
   * product of <em>this</em> and <em>z</em>.
   * Note: the original ComplexNumber is
   * <b>NOT</b> modified.
   * @param z
   * @return this * z
   */
  public ComplexNumber multiply(ComplexNumber z) {
      double realnum = (re*z.re) - (im*z.im);
      double imaginenum = (re*z.im) + (im*z.re);
      
      return new ComplexNumber(realnum, imaginenum);  //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber that is
   * the reciprocal of <em>this</em>.
   * Note: the original ComplexNumber is
   * <b>NOT</b> modified.
   * @return 1.0 / this
   */
  public ComplexNumber reciprocal() {
      double realnum2 = (re)/((re*re) + (im *im));
      double imaginenum2 = -(im)/((re*re) + (im*im));
      return new ComplexNumber (realnum2, imaginenum2);  //A stub: to be fixed
  }

  /**
   * Returns a new ComplexNumber that is
   * <em>this</em> divided by <em>z</em>.
   * Note: the original ComplexNumber is
   * <b>NOT</b> modified.
   * @param z
   * @return this / z
   */
  public ComplexNumber divide(ComplexNumber z) {
      double denominator = (z.re*z.re) + (z.im *z.im);
      double realnum3 = (re*z.re) + (im*z.im);
      double imaginenum3 = -(re*z.im) + (im*z.re);
      return new ComplexNumber (realnum3/denominator, imaginenum3/denominator);  //A stub: to be fixed
  }

  /**
   * Returns a String representation of
   * <em>this</em> in the format:
   * <pre>
   * real +-(optional) i imaginary
   * </pre>
   * If the imaginary part is zero, only the
   * real part is converted to a String.
   * A "+" or "-" is placed between the real
   * and imaginary parts depending on the
   * the sign of the imagrinary part.
   * <p>
   * Examples:
   * <pre>
   *  ..println(new ComplexNumber(0,0); -> "0.0"
   *  ..println(new ComplexNumber(1,1); -> "1.0 + i1.0"
   *  ..println(new ComplexNumber(1,-1); -> "1.0 - i1.0"
   * </pre>
   * @return the String representation.
   */
  @Override
  public String toString() {
      //DO NOT MODIFY THIS CODE!
      String str = "" + this.getReal();
      if (this.getImaginary() == 0.0) {
          return str;
      }
      if (this.getImaginary() > 0) {
          return str + " + i" + this.getImaginary();
      } else {
          return str + " - i" + -this.getImaginary();
      }
  }
}