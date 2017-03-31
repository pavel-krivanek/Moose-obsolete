tests
testSelectElementsForAddingBarTitle01

	| b |
	b := RTGrapher new.
	d := RTHorizontalMultipleData new.
	d barShape color: Color blue.
	d points: #( #('hello' 1 2 1) #('world' 2 4 2) #('bonjour' 3 5 4) #('Gutten Morgen' -1 4 -5)).
	d addMetric: #second.
	d addMetric: #third.
	d addMetric: #fourth.
	d barChartWithBarTitle: 'hello' rotation: -45 color: Color gray.
	b add: d.
	b build.
	
	self assert: d elements size equals: 15.
	self assert: d selectElementsForAddingBarTitle first equals: (d elements at: 2).
	