ui
roassalView
	| min max temp x round b ds |
	self timeline
		ifNil: [ ^ RTView new
			add: (RTLabel elementOn: 'No applicable');
			yourself ].
	b := RTGrapher new.
	x := self timeline size < 20
		ifTrue: [ 400 ] 
		ifFalse: [ self timeline size / 5 * 100 ].
	b extent: x @ 300.
	temp := self timeline collect: #value.
	min := temp min.
	max := temp max.
	ds := RTData new.
	ds points: self timeline.
	ds x: [ :assoc | self timeline indexOf: assoc ].
	ds y: [ :assoc | assoc value - min ].
	ds connectUsing: (RTLine new color: Color blue).
	b add: ds.
	b axisX
		labelRotation: -30;
		labelConversion: [ :n | 
			n isZero
				ifTrue: [ '' ]
				ifFalse: [ (self timeline at: n) key ] ];
		numberOfLabels: self timeline size.
	round := (max - min) abs < 1
		ifTrue: [ 5 ]
		ifFalse: [ 1 ].
	b axisY
		labelConversion: [ :aValue | aValue + min round: round ];
		title: self value value.
	self afterBlock ifNotNil: [ self afterBlock value: b.  ].
	
	b view @ RTZoomableBoxView.
	^ b