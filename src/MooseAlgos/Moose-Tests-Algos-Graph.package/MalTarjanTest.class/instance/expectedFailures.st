running
expectedFailures
	^ (Smalltalk environment hasClassNamed: 'MOViewRenderer')
		  ifTrue: [ super expectedFailures ]
		  ifFalse: [ Array with: #testMondrianSample ]