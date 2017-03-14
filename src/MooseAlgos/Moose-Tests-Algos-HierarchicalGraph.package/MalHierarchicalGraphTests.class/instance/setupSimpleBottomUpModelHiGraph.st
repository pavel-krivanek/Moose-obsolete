setup
setupSimpleBottomUpModelHiGraph
	| hg  |

	hg := MalHierarchicalGraph with: (self setupSimpleBottomUpModel).
	hg bottomUp: #parent.

	^ hg.