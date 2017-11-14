testing - model history
testAttributeAndMethodHistoriesBelongsTo
	testData simpleHistory allClassHistories
		do: [ :eachHistory | 
			eachHistory attributeHistories do: [ :each | self assert: each belongsTo equals: eachHistory ].
			eachHistory methodHistories do: [ :each | self assert: each belongsTo equals: eachHistory ] ]