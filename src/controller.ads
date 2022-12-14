with Ada.Real_Time; use Ada.Real_Time;
with Ada.Execution_Time; use Ada.Execution_Time;
with MicroBit.Console; use MicroBit.Console;
with Wheels;
with Ultrasonic; use Ultrasonic;
with NRF.Radio;
with HAL; use HAL;
use MicroBit;
with MicroBit.Radio; use MicroBit.Radio;

package Controller is
  
   type Directions is (Front, Back, Left, Right, Stop);
   
   task Sense with Priority => 3; 
   task Think with Priority => 2; 
   task Act with Priority => 1; 
   
   procedure Drive(CarDirection : Directions);
   
   protected MotorDriver is 
      function GetDirection return Directions; 
      procedure SetDirection(V : Directions);
       
   private
      DriveDirection : Directions;
   end MotorDriver;

   protected Measurements is 
      procedure SetMeasurements(K : Distance_Cm);
      function GetMeasurements return Distance_Cm;
      
   private        
      SensorValues : Distance_Cm := 0;
   end Measurements;
   
   protected MicroValues is 
      procedure SetMicroValues(A : Radio.RadioData);
      function GetMicroValues return Radio.RadioData;
      
   private
      MicrobitData : Radio.RadioData;
   
   end MicroValues;
   
end Controller;

