testing
testReduceInPresenceOfChop
	"self debug: #testReduceInPresenceOfChop"

	self assert: ((MalKontractor new wordsToBeRemoved: #('Seaside') ; upTo: 4) reduce: 'SeasidehelloSeaside') equals: 'hllo'