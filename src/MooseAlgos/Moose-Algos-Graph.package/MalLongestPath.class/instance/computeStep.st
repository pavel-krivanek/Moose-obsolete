computing
computeStep
	| nodesToManage |
	self isCompleted
		ifFalse: [ 
			currentRank := OrderedCollection new.
			nodesToManage := self nodes difference: previousRanks.
			nodesToManage
				do: [ :node | 
					(previousRanks includesAll: node previousNodes)
						ifTrue: [ 
							currentRank add: node.
							node pathWeight: (node previousNodes max: [ :maxNode | maxNode pathWeight ]) + 1 ] ].
			previousRanks addAll: currentRank.
			maxIterations := maxIterations -1.
			self computeStep ]