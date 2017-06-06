private
testPerformClustering: linkageSelector
	indices size - 1
		timesRepeat: [ self testFindMinimum.
			self perform: linkageSelector ].
	^ self dendrogram