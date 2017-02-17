tests
testConstructingLargeHiGraphTopDown
	| hg rootNodes profiler children levels result |

	rootNodes := OrderedCollection new.
	rootNodes add: 'a'; add: 'b'; add: 'c'.
	levels := 11.
	
	profiler := TimeProfiler new.
	result := profiler runBlock: [	
	
		hg := MalHierarchicalGraph with: rootNodes.
		hg topDown: [ :model |  
			(model size < levels) 
			ifTrue: [
				children := OrderedCollection new.
				children add: (model, 'a').
				children add: (model, 'b').
				children add: (model, 'c').
				children.
			]
		].
	].

	"profiler open.
	profiler showResult: result."
	"hg explore."
 	"]."