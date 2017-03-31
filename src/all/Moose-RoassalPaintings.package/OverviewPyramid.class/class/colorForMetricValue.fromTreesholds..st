accessing
colorForMetricValue: aNumber fromTreesholds: aCollection

	| treesholds lowDifference averageDifference hightDifference |
	treesholds := aCollection.
	
	lowDifference := (treesholds first - aNumber) abs.
	averageDifference := (treesholds second - aNumber) abs.
	hightDifference := (treesholds third - aNumber) abs.
	
	{lowDifference. averageDifference. hightDifference} min = lowDifference ifTrue: [^ Color blue].
	{lowDifference. averageDifference. hightDifference} min = averageDifference ifTrue: [^ Color green].
	{lowDifference. averageDifference. hightDifference} min = hightDifference ifTrue: [^ Color red].
	