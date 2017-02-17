public-view rendering
render: classes
	"(DistributionMapExample new render: Collection withAllSubclasses) open"
	"broken: should call #elements: before calling #render:. See test DistributionMapExampleTest>>testSample."
	| nodes view |
	nodes := classes.

	view := RTMondrian new.
	"view interaction nodraggable."
	view interaction popupText.
	view nodes: nodes forEach: [ :node |
		"view interaction nodraggable."
		view interaction popupText: [:el| el selector].
		view shape rectangle
				size: 10 ;
				fillColor: [:el | self colorForElement: el].
		view nodes: (self elementsFor: node).
		view layout grid gapSize: 1.
	].
	view layout flow.

	^ view