helpers
createAxisXIfNecessary: aView
	| m min max v box line e1 e2 edge axe nticks result delta size scale |
	shouldUseAxisForX ifFalse: [ ^ self ].
	m := self metrics.
	size := (boxSize*m keys size) + (padding * m keys size) + (boxSize/2)+ (padding/2).
	box := RTBox new size: 0.
	line := self lineShape.
	axe := self axisX.
	m keys doWithIndex: [ :m0 :j |
		min := Float fmax.
		max := Float fmin.
		delta := ((boxSize*j) + (padding * j))@0.
		
		self objects do: [ :o |
			v := (m at: m0) rtValue: o.
			min := min min: v.
			max := max max: v.
			 ]. 
		nticks := axe numberOfTicks.
		nticks isZero ifTrue: [ nticks := 2 ].
		result := generator searchMin: min max: max desired: axe numberOfTicks.
		scale := xScales at: m0.
		(result min to: result max by: result step) do: [ :n |
			e1 := box element.
			e2 := box element.
			edge := RTEdge from: e1 to: e2.
			edge + line.
			v := scale scale: n.
			e1 translateTo: v @(boxSize/2).
			e2 translateTo: v @size.
			e1 translateBy: delta.
			e2 translateBy: delta.
			view add: e1; add: e2; add: edge ].
		axe minValue: result min;
			maxValue: result max;
			numberOfTicks: result numberOfTicks;
			numberOfLabels: result numberOfTicks;
			axisFrom: ((scale scale: result min)@size) + delta
			to: ((scale scale: result max)@size) + delta
		].
	

