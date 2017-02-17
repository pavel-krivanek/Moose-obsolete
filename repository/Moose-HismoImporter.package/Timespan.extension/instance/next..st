*moose-hismoimporter
next: aNumber

	| timespan |
	timespan := self.
	1 to: aNumber do: [ :each |
		timespan := timespan next ].
	
	^ timespan