accessing
dataPackages
	rDataSets isNil
		ifTrue: [ self loadRDatasets  ].
	packages := Set new.
	rDataSets values do: [ :row | packages add: row first ].
	^ packages