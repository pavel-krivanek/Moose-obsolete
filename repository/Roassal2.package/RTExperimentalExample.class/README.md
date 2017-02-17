RTExperimentalExample new installTitle: 'BoxSelectionForEdges' 
		code:
		'
| view lb |
view := RTMondrianExample new exampleClassDependencies view.
lb := RTLegendBuilder new.
lb view: view.
lb addText: '1 Right click on the view';
	addText: '2 Select one option from the menu';
	addText: '3 Move the new box';
	addText: '4 Change the the size of the box with double click'.
lb build.

view  @ RTSelectionBox.
view canvas camera 
	noInitializationWhenOpen;
	scale: 0.6;
	translateTo: 72@1270.
RTEmptyViewContext setOnView: view.
^ view
	'