send tests
testIftrue
	| vSends collector |
	collector := self doForSource: 'u := v isNil ifTrue: [1] ifFalse: [2]'.
	vSends := collector sendsTo: #v.
	self assert: vSends size = 1.
	self assert: (vSends includes: #isNil)