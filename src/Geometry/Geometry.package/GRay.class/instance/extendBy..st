rectangle functions
extendBy: num
|cos sin|
self length = 0 
	ifTrue:[ self direction: ( (direction - origin) x * num  ) @ ((direction - origin) y * num ) ]
	ifFalse:[
cos := (direction - origin) x / self length.
sin := (direction - origin) y / self length.	
self direction: ( cos * num * self length ) @ ( sin * num * self length )].
^ self 
