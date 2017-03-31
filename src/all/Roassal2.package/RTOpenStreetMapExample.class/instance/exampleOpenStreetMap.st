sources
exampleOpenStreetMap
	<gtExample>
	<noTest>
	
	"This example uses fome OpenStreetMap data and represent part of the map as graphical entities on top of the map background."

	"We need a ratio here, otherwise Roassal centers incorrectly the view and has precision issues. This ratio of 10 means we are at: 100m at equator for 1.0 in Roassal coordinates."

	"RTOpenStreetMapExample new exampleOpenStreetMap"

	| v map response nodes |
	v := RTView new.
	map := RTOSM new ratio: 100.
	v add: map element.
	response := RTOSM buildingsAndStreamKampungMelayu.
	nodes := (((response at: 'elements') select: [ :el | (el at: 'type') = 'node' ])
		collect: [ :el | (el at: 'id') -> (map latLonToRoassal: (el at: 'lat') @ (el at: 'lon')) ]) asDictionary.
	((response at: 'elements') select: [ :el | (el at: 'type') = 'way' ])
		do: [ :way | 
			| shape |
			shape := RTPolygon new.
			shape
				color:
					(((way at: 'tags') at: 'building' ifAbsent: [  ]) = 'yes'
						ifTrue: [ Color gray ]
						ifFalse: [ Color blue ]).
			shape vertices: ((way at: 'nodes') collect: [ :n | nodes at: n ]).
			v add: (shape elementOn: (way at: 'tags')) @ RTPopup ].
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView @ RTZoomableView.
	RTEmptyViewContext setOnView: v.
	v open.
	v canvas camera focusOnCenterScaled