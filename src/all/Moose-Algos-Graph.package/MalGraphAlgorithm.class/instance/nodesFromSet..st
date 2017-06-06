adding
nodesFromSet: aSet
	"Ensure that the collection do not contains any duplicated item"

	self assert: aSet class == Set.
	nodes addAll: (aSet collect: [ :aModel | self nodeClass with: aModel ])