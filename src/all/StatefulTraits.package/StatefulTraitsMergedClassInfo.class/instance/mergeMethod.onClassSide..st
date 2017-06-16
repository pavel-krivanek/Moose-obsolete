merging
mergeMethod: aMethod onClassSide: aBoolean

	| newMethodSelector prefix tag className targetClass |
	
	aMethod selector=#annotation ifTrue: [ ^ self ].
	
	className := aMethod methodClass instanceSide name.
	"TODO: smarter way of changing selectors"
	prefix := (aMethod selector = #initializeTrait)
		ifFalse: [ '' ]
		ifTrue: [ className, '_'  ].
		
	tag := '_fromTrait_', className.	
		
	targetClass := aBoolean 
		ifTrue: [ self mergedClass class ]
		ifFalse: [ self mergedClass ].
		
	newMethodSelector := targetClass compile: prefix, aMethod sourceCode classified: tag.
	instanceSideSelectors add: newMethodSelector.