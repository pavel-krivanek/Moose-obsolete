testing
testReduceInPresenceOfSpace
	"self debug: #testReduceInPresenceOfSpace"

	self assert: (MalKontractor reduce: 'hello world' upTo: 6) equals: 'howold'.
	self assert: (MalKontractor reduce: 'hello world' upTo: 5) equals: 'howod'