Summarize your lab:

  Part 1:
     Works  Yes or No
     Yes
  Part 2:
     Works  Yes or No
     Yes
  Part 3:
     Works  Yes or No
     No, I could not get the temp array to input. 
***ANSWERS TO QUESTIONS***
 Question 1:
     Which hash table collision resolution method did you use
     (eg. chaining or open addressing)? Explain your choice
     briefly (less than 25 words).
 YOUR ANSWER:
 open addressing because there is a lot of space in to store the strings so there is no need for chaining.
 
 
 
 
 Question 2:
       Which hash function (division or multiplication) did you use?
       How did you convert a string into a number?
 YOUR ANSWER:
       I used division. I converted a string to number using the function atoi(string) as a direct conversion.
 
 
 
 Question 3:
       Another legal XML tag not used in this lab is the
       stand-alone tag.  This kind of tag
       combines both a start-tag and end-tag in one.
       It is identified with a '/' (slash) preceding the
       final >.  (For example, the <foo/>
       is a stand-alone tag that is self balancing.
       
       Describe briefly how
       you would modify Part 3 to allow this kind of tag.
       
 YOUR ANSWER:
       I would copy the characters inputed into an array after reading '<' and then stop when '/' is read
       or '>'. If a '/' is read before '>', I would go straight to the pop function to compare the inputed
       tag vs. the popped one. Otherwise if there is no '/', I would push the tag into the stack.
  