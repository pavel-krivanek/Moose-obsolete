private
testPerformClustering: linkageSelector
	
	indices size - 1
		timesRepeat:
			[MalIncrementNotification signal"With: indices size".
			self testFindMinimum.
			self perform: linkageSelector].
	^self dendrogram