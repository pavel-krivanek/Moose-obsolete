accessing
allIncomingIncludeRelations: visitedPath
	(self incomingIncludeRelations collect: #source) do: [ :f |
		(visitedPath includes: f) ifFalse: [ 
			visitedPath add: f.
			f allIncomingIncludeRelations: visitedPath
		]
	]