accessing
from: aPackage
	rDataSets isNil
		ifTrue: [ self loadRDatasets ].
	^ (rDataSets values select: [ :row | row first = aPackage ]) collect:[:each | each at:2]