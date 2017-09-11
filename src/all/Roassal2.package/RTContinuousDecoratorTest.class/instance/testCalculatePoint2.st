tests
testCalculatePoint2
	| b d1 deco |
	b := RTGrapher new.
	d1 := RTData new.
	d1 points: (Array with: -5@2 with: -3@4 with: 0@1 with: 5@7).
	d1 x: #x.
	d1 y: #y.
	
	b add: d1.
	b build.
	deco := RTContinuousDecorator new.
	b addDecorator: deco.
	
	self assert: (deco calculatePointFor: d1 and: -4.9) equals: -5@2.
	"self halt."
	self assert: (deco calculatePointFor: d1 and: -1) equals: 0@1.
	self assert: (deco calculatePointFor: d1 and: 4.5) equals: 5@7.
	self assert: (deco calculatePointFor: d1 and: 5) equals: 5@7.
	
	deco pointFor: [ :ds :x | 100@100 ].
	self assert: (deco calculatePointFor: d1 and: 3) equals: 100@100.
	
	