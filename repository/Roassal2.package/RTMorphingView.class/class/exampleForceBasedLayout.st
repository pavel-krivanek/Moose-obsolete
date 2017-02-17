examples
exampleForceBasedLayout
	<noTest>
	| randomView view lay |
	
	lay := RTForceBasedLayout new.

	randomView := [ | rndView |
		rndView := RTView new.
		rndView addAll: ((RTEllipse new size: 15 + 15 atRandom; color: Color red) elementsOn: (1 to: (10 + 30 atRandom))).
		RTEdgeBuilder new
			view: rndView;
			connectFrom: [ :vv | vv // 2 ].
		lay charge: (-1 * 1000 atRandom).
		lay on: rndView elements.
		rndView
	].

	view := randomView value.
	view elements do: [ :el | el color: Color gray. el @ RTLabeled ].

	view addMenu: 'Animate!' callback: [ 
		view @ (RTMorphingView new 
						referenceView: randomView value; 
						smoothTransition: 0.3).
		view elements do: [ :el | 
			el pushFront.
			(el hasAttribute: #RTLabelledLabel) ifFalse: [ el @ RTLabeled ]
		]
	].

	^ view inspect