test
testProduct
	"comment stating purpose of message"

	self assert: v * 2 equals: (self vectorClass withAll: #(2 4 6 8 10 12 14 16 18 20)).
	self assert: v * 2 equals: 2 * v.	"no more double in Pharo"	"self assert: v * 2 = (v * 2.0d)."
	self assert: v * 2 equals: v * 2.0.
	v *= 2.
	self assert: v equals: (self vectorClass withAll: #(2 4 6 8 10 12 14 16 18 20))