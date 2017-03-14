*Famix-Extensions
hierarchyNestingLevel
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting of a class inside the hierarchy'>

	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs:
			[| currentMaxDepth |
			(self directSuperclasses isEmpty or: [self isStub])
				ifTrue: [0]
				ifFalse:
					[currentMaxDepth := 0.
					self
						allSuperclassesDo:
							[:aClass | currentMaxDepth := currentMaxDepth max: aClass hierarchyNestingLevel].
					currentMaxDepth + 1]]