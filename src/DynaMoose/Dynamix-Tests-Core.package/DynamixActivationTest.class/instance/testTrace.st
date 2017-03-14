tests
testTrace
	| activation leafActivation trace |
	trace := DynamixTrace new.
	activation := DynamixActivation new.
	activation parent: trace.
	leafActivation := DynamixActivation new.	
	leafActivation parent: activation.
	self assert: leafActivation trace = trace