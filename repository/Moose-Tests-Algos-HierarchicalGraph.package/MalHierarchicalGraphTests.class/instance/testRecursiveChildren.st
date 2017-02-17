tests
testRecursiveChildren
	| hg |
	hg := self setupSimpleTopDownModelHiGraph.	
	
	"Assert that there are more nodes in the highraph in total than some rootNodes sub graph."
	self assert: hg nodes size > hg rootNodes anyOne recursiveChildren size.
	
	"Assert that the total size of nodes in the higraph is equal to all rootNodes and their recursive children."
	self
		assert: hg nodes size
		equals: hg rootNodes size + (hg rootNodes inject: 0 into: [ :sum :each | sum + each recursiveChildren size ])