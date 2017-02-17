control points
vertical
	| b center intermediaryElement1 intermediaryElement2 |
	b := [ :edge |
		center := (RTGroup with: edge from with: edge to) center.
		intermediaryElement1 := RTBox element.
		intermediaryElement1 translateTo: (edge from position x @ center y).
		
		intermediaryElement2 := RTBox element.
		intermediaryElement2 translateTo: (edge to position x @ center y).

		Array with: intermediaryElement1 with: intermediaryElement2
	].
	self controllingElements:  b
	
