accessing
at: anIndex
	
	"^self floatAt: (anIndex bitShift: 2) - 3"
	^ (self basicAt: anIndex) 