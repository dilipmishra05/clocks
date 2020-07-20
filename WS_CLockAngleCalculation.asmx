<%@ WebService Language="C#" Class="WS_ClockAngle" %>

using System; 
  
class CLOCKAngle { 
      
    // Function to calculate the angle 
    static int calcAngleBetweenHands(double h, double m) 
    { 
        // validate the input 
        if (h < 0 || m < 0 ||  
            h > 12 || m > 60) 
            Console.Write("Wrong input"); 
  
        if (h == 12) 
            h = 0; 
              
       if (m == 60) 
       { 
        m = 0; 
        h += 1; 
        if(h>12) 
          h = h-12; 
       }  
  
        // Calculate the angles moved by hour and 
        // minute hands with reference to 12:00 
        int hour_angle = (int)(0.5 * (h * 60 + m)); 
        int minute_angle = (int)(6 * m); 
  
        // Find the difference between two angles 
        int angle = Math.Abs(hour_angle - minute_angle); 
  
        // smaller angle of two possible angles 
        angle = Math.Min(360 - angle, angle); 
  
        return angle; 
    } 
      
    // Driver code 
    public static void Main ()  
    { 
        Console.WriteLine(calcAngleBetweenHands(9, 60)); 
        Console.Write(calcAngleBetweenHands(3, 30)); 
    } 
} 