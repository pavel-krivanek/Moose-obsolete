flat collect
testFlatCollectSet
	"self debug: #testFlatCollectSet"
	
	self assert: ((#((1 2) (1 2) (1 3 4)) asSet  flatCollect: [:each | each]) = #(1 1 2 3 4) asSet).
	self assert: ((#() asSet flatCollect: [:each]) = #() asSet).

	self assert:  ((#((1 2) () (1 3 4)) asSet  flatCollect: [:each | each]) = #(1 1 2 3 4) asSet).
	self assert:  ((#((1 2) #((99)) (1 3 4)) asSet  flatCollect: [:each | each]) 
					= #(1 1 2 3 4 (99)) asSet).
	self assert:  ((#((1 2) #(()) (1 3 4)) asSet  flatCollect: [:each | each]) 
					= #(1 1 2 3 4 ()) asSet).