tests
testBasicVertical

	| b ds d |
	b := RTGrapher new.

	ds := RTData new.
	ds points: #(3 4 6 -2).
	b add: ds.

	d := RTVerticalTickLineDecorator new.
	b addDecorator: d.

	b build.
	
	self assert: b axisX numberOfTicks equals: 4.
	self assert: b axisX step equals: 1.
	self assert: d step equals: 1.