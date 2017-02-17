private - utility
mergedNodesIn: aNodeList
	^ (aNodeList select: [ :node | node mergedNodes notNil ])
		flatCollect: #mergedNodes