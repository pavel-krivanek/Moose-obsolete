hook
resize: element to: newExtent

	resize := RTResizeMove new toExtent: newExtent during: nbCycles on: element.

	view ifNil: [ self view: element view ].
	view addAnimation: resize.