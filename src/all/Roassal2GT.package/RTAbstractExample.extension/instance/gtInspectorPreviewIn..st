*Roassal2GT-Inspector
gtInspectorPreviewIn: composite
	<gtInspectorPresentationOrder: 4>
	^ composite roassal2
		title: 'Examples';
		when: [ self gtExamples notEmpty ];
		send: [ :example | example ];
		painting: [ :view | 
			view @ RTDraggableView.
			self gtOpenOn: view ]