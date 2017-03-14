tests
testBarHeight

	| b e |
	b := RTStackBarPlot new.
	b add: #(37).				
	b barWidth: 150 height: 50.
	b build.
	self assert: b view numberOfElements equals: 1.

	e := b view elements anyOne.
	self assert: e extent y equals: 50