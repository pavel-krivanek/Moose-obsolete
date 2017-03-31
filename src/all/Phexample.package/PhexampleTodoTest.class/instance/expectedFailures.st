private
expectedFailures
	^ (Smalltalk hasClassNamed: #TestTodo)
		ifTrue:  [ #() ]
		ifFalse: [ #(shouldSupportTodo) ]