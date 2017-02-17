control points
horizontal
	| b center intermediaryElement1 intermediaryElement2 |
	b := [ :edge |
		center := (RTGroup with: edge from with: edge to) center.
		intermediaryElement1 := RTBox element.
		intermediaryElement1 translateTo: (center x @ edge from position y).
		
		intermediaryElement2 := RTBox element.
		intermediaryElement2 translateTo: (center x @ edge to position y).

		Array with: intermediaryElement1 with: intermediaryElement2
	].
	self controllingElements:  b
	
