running
testTopTen
	| charts |
	terms := MalTerms sample.
	terms removeStopwords.
	charts := terms topTen.
	self assert: charts size equals: 10.
	self assert: charts first equals: 'tree'.
	self
		assert:
			((charts copyFrom: 2 to: 3)
				includesAll:
					{'paths'.
					'root'}).
	^ terms