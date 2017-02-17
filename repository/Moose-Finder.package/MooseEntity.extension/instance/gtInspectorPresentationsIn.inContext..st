*Moose-Finder
gtInspectorPresentationsIn: composite inContext: aGTInspector
	| pragmas |
	pragmas := Pragma
		allNamed: #moosePresentationOrder:
		from: self mooseInterestingEntity class
		to: Object
		sortedUsing: [ :x :y | (x argumentAt: 1) < (y argumentAt: 1) ].
	pragmas
		do: [ :eachPragma | 
			(eachPragma methodSelector findTokens: $:) size = 1
				ifTrue: [ self mooseInterestingEntity
						perform: eachPragma methodSelector
						with: composite ].
			(eachPragma methodSelector findTokens: $:) size = 2
				ifTrue: [ self mooseInterestingEntity
						perform: eachPragma methodSelector
						with: composite
						with: aGTInspector ] ].
	super gtInspectorPresentationsIn: composite inContext: aGTInspector