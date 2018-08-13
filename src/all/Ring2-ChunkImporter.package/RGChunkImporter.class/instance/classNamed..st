private
classNamed: className

	| behavior |
	behavior := self environment ask behaviorNamed: className.
	^ behavior 
		ifNotNil: [ behavior ]
		ifNil: [ self environment ensureClassNamed: className asSymbol. ]
