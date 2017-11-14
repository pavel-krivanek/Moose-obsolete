private
createLabels
	^ elements collect: [ :e | | lbl const isLeaf |
		lbl := self labelShape elementOn: e model.
		e attributes at: #label put: lbl.
		const := RTConstraint movable: lbl fix: e.
		const
				horizontalPadding: padding x;
				verticalPadding: padding y;
				outer.
		isLeaf := (e attributes at: self childrenKey) isEmpty.
		layout = #rightward ifTrue: [ const left.
			isLeaf ifTrue: [ const right ] ].
		layout = #leftward ifTrue: [ const right.
			isLeaf ifTrue: [ const left ] ].
		layout = #upward 
			ifTrue: [ const right; top ].
		layout = #downward 
			ifTrue: [ const right; top  ].
		const stick.
		lbl
	 ].