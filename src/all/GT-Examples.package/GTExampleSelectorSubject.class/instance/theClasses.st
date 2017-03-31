private
theClasses
	theClasses ifNil: [ 
		theClasses := Array streamContents: [ :stream |
			Smalltalk allClassesAndTraitsDo: [ :class |
				(class includesSelector: self selector) ifTrue: [ 
					stream nextPut: class ] ] ] ].
	^ theClasses