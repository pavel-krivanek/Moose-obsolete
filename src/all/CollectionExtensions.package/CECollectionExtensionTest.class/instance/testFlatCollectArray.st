flat collect
testFlatCollectArray
	"self debug: #testFlatCollectArray"
	
	self assert: ((#((1 2) (3 4) (5 3)) flatCollect: [ :each | each ]) = #(1 2 3 4 5 3)).
	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each | each]) = #(1 2 2 3 1 3 4)). 	
		
	self assert: ((#((1 2) (2 3) () ()) flatCollect: [:each | each]) = #(1 2 2 3)). 

	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each| Array with: each])
					=  #(#(1 2) #(2 3) #(1 3 4))).
					
	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each| Set with: each])
					=  #(#(1 2) #(2 3) #(1 3 4))).	
	
