instance creation
fromComputationBlock: aOneArgumentBlock andElements: aCollectionOfElements

	|tmpPropertyResult|
	tmpPropertyResult := (aOneArgumentBlock rtValue: aCollectionOfElements anyOne).
	tmpPropertyResult isString ifTrue: [^ DistributionMapStringPropertyInfo new].
	tmpPropertyResult isCollection ifTrue: [^ DistributionMapCollectionPropertyInfo new].
	tmpPropertyResult isNumber ifTrue: [^ DistributionMapNumberPropertyInfo new].
	(tmpPropertyResult isKindOf: Boolean) ifTrue: [^ DistributionMapBooleanPropertyInfo new].
	^ DistributionMapUnknownPropertyInfo new	 	 