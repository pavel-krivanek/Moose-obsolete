sources
exampleUseOfDecoration

	| view element decoration |
	view := RTView new.
	element := RTBox new size: 50; color: Color blue; element.
	decoration := RTDecoration new 
						shape: (RTEllipse new color: Color red; borderColor: Color black; size: 10)
							tooltip: 'Set red color'
							action: [ :anElement | 
											anElement trachelShape color: Color red.
											anElement signalUpdate. ];
						shape: (RTEllipse new color: Color yellow; borderColor: Color black; size: 10)
							tooltip: 'Set yellow color'
							action: [ :anElement | 
											anElement trachelShape color: Color yellow.
											anElement signalUpdate. ];
						shape: (RTEllipse new color: Color green; borderColor: Color black; size: 10)
							tooltip: 'Set green color'
							action: [ :anElement | 
											anElement trachelShape color: Color green.
											anElement signalUpdate. ].
	element @ decoration @ RTDraggable.
	view add: element.
^ view