statistics
sameTypesAs: otherKeeper
	| result correspondingResult |
	result := OrderedCollection new.
	self
		withAllInstvarResultsDo:
			[:cl :iv :res | 
			correspondingResult := otherKeeper
				typesForClass: cl
				instvar: iv.
			(res types sameElements: correspondingResult types)
				ifTrue: [result add: cl -> iv]].
	^result