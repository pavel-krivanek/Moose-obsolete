RTLineDecorationExample new installTitle: 'Cool' 
		code:
		'
	| v b1 b2 edges |
	b1 := (RTBox new
		size: 100;
		element)
		translateTo: 0 @ 0;
		@ RTDraggable.
	b2 := (RTBox new
		size: 100;
		element)
		translateTo: 400 @ 0;
		@ RTDraggable.
	edges := OrderedCollection new.
	edges add: ((RTArrowedLine new head: RTFilledDiamond asHead; color: Color black; width: 2; attachPoint: (RTRectangleAttachPoint new offset: 15)) edgeFrom: b1 to: b2).
	edges add: ((RTDecoratedLine new color: Color blue; width: 2; attachPoint: (RTRectangleAttachPoint new offset: 15)) edgeFrom: b1 to: b2).
	edges add: ((RTDecoratedLine new filledDiamondHead; color: Color green; width: 2; attachPoint: (RTRectangleAttachPoint new offset: 15)) edgeFrom: b1 to: b2).
	edges add: ((RTDecoratedLine new filledDiamondHead; emptyCircleTail; color: Color red; width: 2; attachPoint: (RTRectangleAttachPoint new offset: 15)) edgeFrom: b1 to: b2).


v := RTView new
	add: b1;
	add: b2;
	addAll: edges.
edges do: [ :each | each update ].
v
'
	