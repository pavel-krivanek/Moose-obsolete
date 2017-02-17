private
view: target withShape: shape inLayerNamed: label fromClass: class inView: view
	| nodes node layer |
	layer := (RTElement on: target asMooseGroup) + (RTBox new
				borderColor: Color gray;
				color: Color transparent).
	layer @ (RTPopup new text: label).
	nodes := target collect: [ :each | 
			node := (RTElement on: each) + shape.
			node @ RTPopup.
			node @ RTDraggable.
			node ].
	view add: layer.
	view addAll: nodes.
	^ layer -> nodes