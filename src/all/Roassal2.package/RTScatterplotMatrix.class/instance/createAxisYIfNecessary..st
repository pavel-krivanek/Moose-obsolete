helpers
createAxisYIfNecessary: aView
	| m min max v box line e1 e2 edge axe nticks result delta size scale |
	shouldUseAxisForY ifFalse: [ ^ self ].
	m := self metrics.
	size := (boxSize*m keys size) + (padding * m keys size) + (boxSize/2)+ (padding/2).
	box := RTBox new size: 0.
	line := self lineShape.
	axe := self axisY.
	m keys doWithIndex: [ :m0 :j |
		min := Float fmax.
		max := Float fmin.
		delta := 0@((boxSize*j) + (padding * j)).
		
		self objects do: [ :o |
			v := (m at: m0) rtValue: o.
			min := min min: v.
			max := max max: v.
			 ]. 
		nticks := axe numberOfTicks.
		nticks isZero ifTrue: [ nticks := 2 ].
		result := generator searchMin: min max: max desired: axe numberOfTicks.
		scale := yScales at: m0.
		(result min to: result max by: result step) do: [ :n |
			e1 := box element.
			e2 := box element.
			edge := RTEdge from: e1 to: e2.
			edge + line.
			v := scale scale: n.
			e1 translateTo: (boxSize/2)@v.
			e2 translateTo: size@v.
			e1 translateBy: delta.
			e2 translateBy: delta.
			view add: e1; add: e2; add: edge ].
		axe minValue: result min;
			maxValue: result max;
			numberOfTicks: result numberOfTicks;
			numberOfLabels: result numberOfTicks;
			axisFrom: ( (boxSize/2) @(scale scale: result min)) + delta
			to: ( (boxSize/2) @(scale scale: result max)) + delta
		].
	

