tests
testaddColorFading02

	| lb |
	lb := RTLegendBuilder new.
	lb addColorFadingUsing: RTPalette c1 text: 'this is a test'.
	lb build.
	
	self assert: lb view numberOfElements equals: 52.
