testing
testReduceUnknownCharacter
	"self debug: #testReduce"

	"J is not in the map."

	self assert: ((MalKontractor upTo: 4) reduce: 'Jieiei') equals: 'Jiii'.
	self assert: ((MalKontractor upTo: 4) reduce: 'Jieieriz') equals: 'iiiz'.
	self assert: ((MalKontractor upTo: 4) reduce: 'Jieierjg') equals: 'iijg'