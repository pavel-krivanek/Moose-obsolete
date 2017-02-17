converting
assert: aCollectionOfNodesModel hasWeight: values
	self assert: aCollectionOfNodesModel size equals: values size.
	aCollectionOfNodesModel
		withIndexDo: [ :element :index | self assert: (longestPath findNode: element) pathWeight equals: (values at: index) ]