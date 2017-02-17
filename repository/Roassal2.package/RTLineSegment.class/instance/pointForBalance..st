geometry
pointForBalance: aNumber
	"Return point on the line as specified by the balance.
	Balance is
		\in <0,1> for relative (e.g. 0 start, 1 end, 0.5 middle).
		>1 for absolute starting from source (e.g. '10' is 10 pixels from the FROM)
		<1 for absolute starting from end (e.g. '-10' is 10 pixesl from the TO)
	"

	| balance |
	balance := aNumber.
	(aNumber between: 0 and: 1)
		ifTrue: [ balance := self length * aNumber ].
	balance < 0
		ifTrue: [ balance := self length - balance negated ].
	^ self length > 0
		ifTrue: [ from + (self vector / self length * balance) ]
		ifFalse: [ from ]