rendering
colorForMetric: aSymbol withValue: aNumber

	| treesholds lowDifference averageDifference hightDifference |
	treesholds := self treesholdsToUse at: aSymbol.
	
	lowDifference := (treesholds first - aNumber) abs.
	averageDifference := (treesholds second - aNumber) abs.
	hightDifference := (treesholds third - aNumber) abs.
	
	{lowDifference. averageDifference. hightDifference} min = lowDifference ifTrue: [^ Color blue darker].
	{lowDifference. averageDifference. hightDifference} min = averageDifference ifTrue: [^ Color green muchDarker].
	{lowDifference. averageDifference. hightDifference} min = hightDifference ifTrue: [^ Color red darker].
	