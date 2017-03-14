accessing
instrumentationContextFrom: aContext
	|ctxt|
	ctxt := aContext sender sender sender sender sender.
	^ ctxt sender methodClass = ReflectiveMethod 
		ifTrue: [ ctxt sender ]
		ifFalse: [ ctxt ]