setup
setupSimpleTopDownModelHiGraph
	| hg |

	hg := MalHierarchicalGraph with: (self setupSimpleTopDownModel).
	hg topDown: #children.

	^ hg.