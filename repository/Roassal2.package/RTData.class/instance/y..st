accessing
y: blockOrSymbol
	blockOrSymbol isSymbol
		ifTrue: [ self
				yElement: [ :anElement | 
					anElement model isDictionary
						ifTrue: [ anElement model at: blockOrSymbol ]
						ifFalse: [ blockOrSymbol rtValue: anElement model ] ] ]
		ifFalse: [ self yElement: [ :anElement | blockOrSymbol rtValue: anElement model ] ]