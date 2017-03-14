tests
testBehaviour
	| activation behaviour |
	activation := DynamixActivation new.
	behaviour := FAMIXBehaviouralEntity new.
	activation behaviour: behaviour.
	self assert: behaviour activations size = 1.
	self assert: behaviour activations first = activation