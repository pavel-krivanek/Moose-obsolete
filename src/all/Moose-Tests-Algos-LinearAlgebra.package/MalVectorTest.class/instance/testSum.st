test
testSum
	"comment stating purpose of message"

	self assert: v + 2 equals: (self vectorClass withAll: #(3 4 5 6 7 8 9 10 11 12)).
	self assert: v + 2 equals: 2 + v.	"no longer double in pharo"	"self assert: v + 2 = (v + 2.0d)."
	self assert: v + 2 equals: v + 2.0.
	v += 2.
	self assert: v equals: (self vectorClass withAll: #(3 4 5 6 7 8 9 10 11 12))