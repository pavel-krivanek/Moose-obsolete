tests
testConstructingLargeHiGraphBottomUp
	| hg rootNodes levels leafNodes profiler result |
	
	"(1 to: 1) do: [ :i |"

	rootNodes := OrderedCollection new.
	leafNodes := OrderedCollection new.
	levels := 11.
	
	rootNodes add: 'a'; add: 'b'; add: 'c'.
	rootNodes do: [ :model | MalHierarchicalGraphTests new recursiveStringFactory: model in: leafNodes to: levels ].
	
	profiler := TimeProfiler new.
	result := profiler runBlock: [	

		hg := MalHierarchicalGraph with: leafNodes.
	
		hg aggregation: [ :model |  
			(model size > 1) 
			ifTrue: [ model truncateTo: (model size - 1). ]
			ifFalse: [ nil ].
		].
	].

	"Transcript show: '#propEdges: ', hg edgesPropagated size asString, '; '.
	
	profiler rootTallyItems do: [ :t |
		Transcript show: t method selector, ' ', t tally asString, '; '.
	].

	Transcript show: 'total: ', profiler tally asString, ';'; cr."
	
	"profiler open.
	profiler showResult: result."
	"hg explore."
 	"]."