util
recursiveStringFactory: aString in: aSet to: aLevel.
	aString size < aLevel
	ifTrue: [
		| childA childB childC |
		childA := aString , 'a'.
		aSet add: childA.
		self recursiveStringFactory: childA in: aSet to: aLevel. 
		childB := aString , 'b'.
		aSet add: childB.
		self recursiveStringFactory: childB in: aSet to: aLevel. 
		childC := aString , 'c'.
		aSet add: childC.
		self recursiveStringFactory: childC in: aSet to: aLevel. 
	].
	
	