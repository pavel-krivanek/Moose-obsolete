tests - reversed
testVerticallyReversed
	| layout v edge lineShape elements |
	
	v := RTView new.
	elements := RTBox elementsOn: (1 to: 3).
	v addAll: elements.
	lineShape := RTLine new.
	edge := lineShape edgeFrom: elements first to: elements second.
	v add: edge.
	edge := lineShape edgeFrom: elements first to: elements third.
	v add: edge.
	layout := RTHorizontalTreeLayout new.
	self assert: (v edges noneSatisfy: [ :ed | ed shape attachPoint isInverted ]).
	self assert: (v edges collect: [ :ed | ed shape attachPoint ]) asSet size equals: 1.
	
	"NO REVERSE"
	layout on: elements.
	self assert: elements second position x > elements first position x.
	self assert: elements second position y < elements first position y.
	self assert: elements second position x equals: elements third position x.

	self assert: (v edges noneSatisfy: [ :ed | ed shape attachPoint isInverted ]).
	self assert: (v edges collect: [ :ed | ed shape attachPoint ]) asSet size equals: 1.

	"REVERSE"
	layout verticallyReverse.
	layout on: elements.
	self assert: elements second position x > elements first position x.
	self assert: elements second position y > elements first position y.
	self assert: elements second position x equals: elements third position x.
	
	"ATTACHPOINT"
	self assert: (v edges noneSatisfy: [ :ed | ed shape attachPoint isInverted ]).
	self assert: (v edges collect: [ :ed | ed shape attachPoint ]) asSet size equals: 1.