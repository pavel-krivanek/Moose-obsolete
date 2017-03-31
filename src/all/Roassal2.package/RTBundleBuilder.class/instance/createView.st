hooks
createView
	^ super createView @ (RTRotableView new 
		elements: [ elements ];
		center: [ center ];
		yourself ).