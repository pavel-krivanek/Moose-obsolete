tests
testaddColorFading

	| lb |
	lb := RTLegendBuilder new.
	lb addColorFadingFrom: Color green to: Color black text: 'this is a test'.
	lb build.
	
	self assert: lb view numberOfElements equals: 52.
