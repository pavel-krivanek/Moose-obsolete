tests
testCalculatePoint
	| b d1 deco |
	b := RTGrapher new.
	d1 := RTData new.
	d1 points: #(1 2 3 4).
	
	b add: d1.
	b build.
	deco := RTContinuousDecorator new.
	b addDecorator: deco.
	self assert: (deco calculatePointFor: d1 and: 1.2) equals: 1@1.
	self assert: (deco calculatePointFor: d1 and: 1.7) equals: 2@2.
	self assert: (deco calculatePointFor: d1 and: 3) equals: 3@3.
	self assert: (deco calculatePointFor: d1 and: 4) equals: 4@4.
	
	deco pointFor: [ :ds :x | 100@100 ].
	self assert: (deco calculatePointFor: d1 and: 3) equals: 100@100.
	
	