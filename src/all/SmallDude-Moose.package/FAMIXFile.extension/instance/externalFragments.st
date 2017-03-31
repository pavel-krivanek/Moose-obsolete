*SmallDude-Moose-private
externalFragments
	| externalDups |
	externalDups := self allExternalDuplications.
	^ externalDups notEmpty
		ifTrue: [ externalDups distinctFragments ]
		ifFalse: [ OrderedCollection new ]