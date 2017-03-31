*Moose-Finder
mooseFinderPresentationsIn: composite inContext: aMooseFinder
	| pragmas |
	pragmas := Pragma
		allNamed: #moosePresentationOrder:
		from: self class
		to: Object
		sortedUsing: [ :x :y | (x argumentAt: 1) < (y argumentAt: 1) ].
	pragmas
		do: [ :eachPragma | 
			(eachPragma methodSelector findTokens: $:) size = 1
				ifTrue: [ self perform: eachPragma methodSelector with: composite ].
			(eachPragma methodSelector findTokens: $:) size = 2
				ifTrue: [ self
						perform: eachPragma methodSelector
						with: composite
						with: aMooseFinder ] ]