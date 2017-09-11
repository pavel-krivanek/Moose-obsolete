hooks
renderIn: aView
	| elements lines lbl maxSum|
	numberOfValuesPerRow := values first numberOfValues.
	maxSum := (values collect: #totalSum) max. 
	lines := RTGroup new.
	values
		do: [ :tupple | 
			elements := tupple values asGroup collectWithIndex: [ :aValue :index | self elementOn: aValue -> index ].
			aView addAll: elements.
			lines add: elements ].
	lines doWithIndex: [ :l :i | 
		self isVertical ifTrue: [ 
			self normalizer
				elements: l;
				normalizeHeight: [ :m | m key * maxSum / (values at: i) totalSum ]
					min: 0
					max: heightBlock
					minValue: 0
					maxValue: maxSum
			 ] ifFalse: [ 
			self normalizer
				elements: l;
				normalizeWidth: [ :m | m key * maxSum / (values at: i) totalSum ]
					min: 0
					max: widthBlock
					minValue: 0
					maxValue: maxSum
			 ] ].
	lines
		do: [ :aLineOfElements | 
			(self isVertical 
				ifTrue: [ RTVerticalLineLayout  ]
				ifFalse: [ RTHorizontalLineLayout ]) new
				gapSize: 0;
				on: aLineOfElements ].
	(self isVertical 
		ifTrue: [ RTHorizontalLineLayout ]
		ifFalse: [ RTVerticalLineLayout  ]) on: lines.
	
	self addLabelToBarIfNecessary.
	values with: lines do: [ :barRow :line | | const fix |
		barRow title ifNotNil: [ 
			lbl := (RTLabel new text: barRow title) element.
			aView add: lbl.
			fix := line first.
			self isVertical ifTrue: [
				fix := line last.
				lbl rotateByDegrees: -30 ].
			const := RTConstraint movable: lbl fix: fix.
			const outer.
			self isVertical 
				ifTrue: [ const verticalPadding: self offsetBetweenBarAndTitle; bottom ]
				ifFalse: [ const horizontalPadding: self offsetBetweenBarAndTitle; left ].
			const move] ].
	
	self addLegendIfNecessary