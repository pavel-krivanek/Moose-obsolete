*SmallDude-Moose-private
internalFragments
	| internalDups |
	internalDups := self allInternalDuplications.
	^ internalDups notEmpty
		ifTrue: [ internalDups distinctFragments ]
		ifFalse: [ OrderedCollection new ]