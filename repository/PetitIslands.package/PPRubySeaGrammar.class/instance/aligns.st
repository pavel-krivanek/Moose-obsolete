indentation
aligns
	^ [:context |
		(context column == (context indentStack topIfEmpty: -1)) ifTrue: [ 
			#aligns
		] ifFalse: [
			PPFailure message: 'no alignment' at: context position
		]
	] asParser
		"JK: this is a hack, it improves the speed of compiled parser"
		propertyAt: #changesContext put: false;
		yourself