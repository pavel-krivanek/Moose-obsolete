I represent an abstract behavior of timer.

We defining a cycle length (cycleLength) for timer, expressed in seconds.
The value of timer (#value) then can be observed over time
as a number which goes from 0 to 1 and then stops.
The moment when value reaches 1 is at time equal to timer's cycle length passed from the moment we started it.
 
Timers can be one-shot or repeating.
One-shot timer stops after elapsing its cycle length, reaching value = 1.
The repeating timer keeps running repeating the cycle over and over again, and its value goes from 0 to 1 , then drops to 0 and goes again to 1 and again...
Additionally to #value, there is #elapsedCycles , which can be used to tell, how many cycles are passed since timer's first start.

Timer can be stopped (paused), resumed or fully reset. The timer value & elapsed cycles is changing only when timer active.