*petitgui-morphic-creational
newColumnMorph
	^ AlignmentMorph newColumn
		cellPositioning: #topLeft;
		color: Color transparent;
		listCentering: #topLeft;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 0;
		yourself