test
testProductVector
	"comment stating purpose of message"

	self assert: v * w equals: (self vectorClass withAll: #(-5 -10 -15 -20 -25 -30 -35 -40 -45 -50)).
	self assert: v * w equals: w * v