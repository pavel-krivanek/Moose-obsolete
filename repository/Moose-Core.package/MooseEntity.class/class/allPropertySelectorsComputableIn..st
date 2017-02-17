meta accessing
allPropertySelectorsComputableIn: aMooseModel 

	"return a list of selectors not returning nil when applied on aMooseModel. Usefull for the ditributionMap wizard. Whith this method, it can provide in a sure way all the available property selectors that will not crash the visu by returning nil. But it takes a lot of time. (Maybe a better solution would be to make the distributionMap resistant to properties returning nil?)"
	|result|
	result := OrderedCollection new.
	^ self allPropertySelectors  do: [:aSelector |
		(aMooseModel allWithSmalltalkType: self) detect: [:each | (each perform: aSelector) isNil] ifNone: [result add: aSelector].
		]
		
