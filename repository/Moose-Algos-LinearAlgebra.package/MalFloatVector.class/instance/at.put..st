accessing
at: anIndex put: aNumber
	
	"^self
		floatAt: (anIndex bitShift: 2) - 3
		put: aNumber asFloat"
		
	^ self basicAt: anIndex put: aNumber asFloat