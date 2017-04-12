running
setUp
	super setUp.
	elements := (RTBox new height: #yourself; width: [ :o | o + 1 ]) elementsOn: (1 to: 3).
	resize := RTResize new.
	resize elements: elements.