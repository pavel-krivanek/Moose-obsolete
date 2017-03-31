view1 := RTView new.
view1 addAll: ((RTEllipse new size: 20) elementsOn: (1 to: 25)).
RTEdgeBuilder new
	view: view1;
	connectFrom: [ :vv | vv // 2 ].
RTTreeLayout on: view1 elements.



view2 := RTView new.
view2 addAll: ((RTEllipse new size: 20) elementsOn: (1 to: 25)).
RTGridLayout on: view2 elements.
view2 addMenu: 'Morphing' callback: [ view2 @ (RTMorphingView new referenceView: view1; smoothTransition) ]
