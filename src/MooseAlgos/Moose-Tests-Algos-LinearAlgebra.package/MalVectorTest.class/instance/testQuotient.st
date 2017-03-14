test
testQuotient
	"comment stating purpose of message"

	self assert: v / 2 equals: (self vectorClass withAll: #(0.5 1 1.5 2 2.5 3 3.5 4 4.5 5)).
	self assert: (2 / v) first equals: 2.
	self assert: v / 2 equals: (2 / v) reciprocal.	"no longer double in pharo"	"self assert: v / 2 = (v / 2.0d)."
	self assert: v / 2 equals: v / 2.0.
	v /= 2.
	self assert: v equals: (self vectorClass withAll: #(0.5 1 1.5 2 2.5 3 3.5 4 4.5 5))