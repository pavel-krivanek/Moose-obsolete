converting
asLine
|ai bi ci|
(self origin  y) = (self direction  y) ifTrue:
[ ^ GLine
		a: 0 b: 1 c: ((self origin y) negated)].
(self origin x) = (self direction x) ifTrue:[ 
	^ GLine
		a: 1 b: 0 c: ((self origin x) negated)].	
ai := (self origin y) - (self direction y). 
bi := (self direction x) - (self origin x).
ci := ((self origin x) - (self direction x)) * (self origin y) + ( ((self direction y) - (self origin y)) * (self origin x) ).
^ GLine
		a:ai b: bi c: ci
