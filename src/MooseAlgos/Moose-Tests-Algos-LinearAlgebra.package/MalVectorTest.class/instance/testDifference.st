test
testDifference
	"comment stating purpose of message"

	self assert: v - 2 equals: (self vectorClass withAll: #(-1 0 1 2 3 4 5 6 7 8)).
	self assert: 2 - v equals: (self vectorClass withAll: #(1 0 -1 -2 -3 -4 -5 -6 -7 -8)).
	self assert: v - 2 equals: (2 - v) negated.	"no longer double in pharo"	"self assert: v - 2 = (v - 2.0d)."
	self assert: v - 2 equals: v - 2.0.
	v -= 2.
	self assert: v equals: (self vectorClass withAll: #(-1 0 1 2 3 4 5 6 7 8))