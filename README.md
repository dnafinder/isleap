# isleap
ISLEAP True for leap year.<br/>
    ISLEAP(Year) returns 1 if Year is a leap year and 0 otherwise.
    ISLEAP is only set for gregorian calendar, so Year >= 1583

Syntax: 	ISLEAP(YEAR)
     
    Inputs:
          YEAR - Year of interest (default = current year). 
          You can input a vector of years.
    Outputs:
          Logical vector.

     Example: 

          Calling on Matlab the function: isleap

          Answer is: 0


          Calling on Matlab the function: x=isleap([2007 2008])

          Answer is:
          x = 0 1

          Created by Giuseppe Cardillo
          giuseppe.cardillo-edta@poste.it
          Modified after Simon Jan suggestions
To cite this file, this would be an appropriate format:
Cardillo G. (2007) Isleap: a simple routine to test if a year is leap.
http://www.mathworks.com/matlabcentral/fileexchange/14172
