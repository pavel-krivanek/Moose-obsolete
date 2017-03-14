*Moose-Finder
mooseFinderPresentationsIn: composite
	| pragmas |
	pragmas := Pragma 
				allNamed: #moosePresentationOrder: 
				from: self class 
				to: Object 
				sortedUsing: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	pragmas do: [ :eachPragma | 
		self perform: eachPragma selector with: composite ]
