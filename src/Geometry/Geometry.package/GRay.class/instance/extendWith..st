rectangle functions
extendWith: num
|cos sin|
cos := (direction - origin) x / self length.
sin := (direction - origin) y / self length.	
self direction: ( self direction x +  (cos * num) ) @ ( self direction y + (sin * num) ).
^ self 
