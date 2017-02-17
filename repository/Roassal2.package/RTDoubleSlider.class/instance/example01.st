examples
example01
	"
		self new example01
	"
	| v label1 label2 doubleSlider composer |
	v := RTView new.
	
	composer := RTComposer new.
	composer view: v.
	
	label1 := RTLabel elementOn: 0.
	v add: label1.
	composer group: label1.
	
	label2 := RTLabel elementOn: 0.
	v add: label2.
	composer group: label2.
	
	doubleSlider := RTDoubleSlider new.
	doubleSlider view: v.
	doubleSlider labeled.
	doubleSlider callback: [ :cursor1 :cursor2 | 
		label1 model: cursor1 * 100.
		label1 updateShape.
		label2 model: cursor2 * 100.
		label2 updateShape. ].
	doubleSlider move: #below.
	doubleSlider build.
	composer group: doubleSlider.
	
	composer layout: (RTVerticalLineLayout new gapSize: 25; center).
	^ v
	 