sources
exampleSeismOnEarth
	<gtExample> 
	<noTest>	
	"This example reuse the seism data of Roassal 2. But we need to zoom out a lot to see any earthquake spot."

	"RTOpenStreetMapExample new exampleSeismOnEarth"

	| v map e tab |
	tab := RTTabTable new input: RTMapLocationBuilder new seismData2 usingDelimiter: $,.
	tab removeFirstRow.
	tab replaceEmptyValuesWith: '0' inColumns: #(2 3 4 5).
	tab convertColumnsAsFloat: #(2 3 4 5).
	v := RTView new.
	map := RTOSM new.
	e := map element.
	v add: e.
	tab values
		do: [ :row | 
			v
				add:
					(((RTEllipse new
						width: (2 raisedTo: row fifth) * 10;
						height: (2 raisedTo: row fifth) * 10;
						color: (Color red alpha: 0.3)) elementOn: row fifth) @ RTPopup
						translateTo: (map latLonToRoassal: row second @ row third)) ].
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v canvas camera scale: 0.035.
	v @ RTDraggableView @ RTZoomableView.
	RTEmptyViewContext setOnView: v.
	^ v