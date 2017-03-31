private
hasParentWithNodeList: aNodeList
	"optimized"
	parent == nil
		ifTrue: [^ false].
	^ parent hasNodeList: aNodeList.