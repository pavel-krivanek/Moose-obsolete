*Moose-RoassalPaintings-Support
faninBalance

	| fanin |
	fanin := self fanIn.
	^ fanin = 0 	ifTrue: [0]
					ifFalse: [(self externalFanin - self internalFanin) / self fanIn]