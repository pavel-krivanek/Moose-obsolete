private
viewFameClasses: classes
	| view |
	view := RTUMLClassBuilder new.
	self viewFameClasses: classes on: view.
	^ view openWithToolbarEntitled: 'Fame UML'