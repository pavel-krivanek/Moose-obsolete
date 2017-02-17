accessing
computeAndReturnDistributionMapElements

	^ self mooseGroup flatCollect: [:anEntity | self elementsBlockOrSelector rtValue: anEntity]