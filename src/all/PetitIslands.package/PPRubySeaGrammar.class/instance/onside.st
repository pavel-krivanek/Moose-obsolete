indentation
onside
	^ [:context |
		(context column >= (context indentStack topIfEmpty: -1)) ifTrue: [ 
			#onside
		] ifFalse: [
			PPFailure message: 'offside position, not onside :(' at: context position
		]
	] asParser
		"JK: this is a hack, it improves the speed of compiled parser"
		propertyAt: #changesContext put: false;
		yourself