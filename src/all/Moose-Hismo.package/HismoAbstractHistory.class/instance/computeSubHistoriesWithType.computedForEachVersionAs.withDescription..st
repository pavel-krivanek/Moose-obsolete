private
computeSubHistoriesWithType: aHistoryClass computedForEachVersionAs: aBlock withDescription: aDescription 
	"generic method to compute sub histories"
	| histories histDict |
	histories := OrderedCollection new.
	histDict := Dictionary new.
	
	versions do: 
		[ :eachVersion | 
		(aBlock value: eachVersion) do: 
			[ :each | 
			| wantedHistory |
			wantedHistory := histDict 
				at: each historicalUniqueName
				ifAbsentPut: [ aHistoryClass new ].
			(wantedHistory isEmpty not and: [ wantedHistory last referenceVersion = eachVersion referenceVersion ]) ifFalse: 
				[ | newVersion |
				newVersion := HismoEntityVersion 
					with: each
					inHistory: wantedHistory
					withReferenceVersion: eachVersion referenceVersion.
				wantedHistory addLast: newVersion ] ] ].
	histDict values do: [ :each | each referenceHistory: self referenceHistory ].
	histories addAll: histDict values.
	^ HismoHistoryGroup 
		withAll: histories
		withDescription: aDescription