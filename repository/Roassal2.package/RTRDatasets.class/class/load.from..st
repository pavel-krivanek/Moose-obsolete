public
load: aDataSet from: aPackage
	"Return a RTTabTable corresponding to a dataset name and a dataset package.
	The list of packages and dataset available is given by executing the expression: self listOfRDatasets
	
	For example:
	RTRDatasets load:'Titanic' from:'datasets'
	Return the list of survival of the titatic disaster.
	
	RTRDatasets load: 'Yogurt' from: 'Ecdat'
	Note that the returned table probably needs some column conversions.
	"
	| items dataSet |
	rDataSets isNil
		ifTrue: [ self loadRDatasets ].
	items := rDataSets values select: [ :row | row first = aPackage ].
	dataSet := items detect: [ :row | row second = aDataSet ].
	^ RTTabTable new input: (dataSet at: 4) asUrl retrieveContents usingDelimiter: $,