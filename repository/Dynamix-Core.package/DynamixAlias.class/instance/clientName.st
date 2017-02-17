accessing-derived
clientName
	| clientClassName clientClassMethod activationReturnedFrom |
	self creator ifNil: [ ^'n/a' ].
	activationReturnedFrom := self creator children detect: [ :each | each return = self ] ifNone: [ nil ].
	clientClassName := activationReturnedFrom
		ifNotNil: [ :activation | activation classOfReceiver name ] ifNil: [ '?' ].
	clientClassMethod := activationReturnedFrom
		ifNotNil: [ :activation | activation method name ] ifNil: [ '?' ].
	^ clientClassName , '>>' , clientClassMethod