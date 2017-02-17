accessing
explanation
	^ 'MOViewRenderer should not be instantiated in the same method where the visualization is defined. The pattern should be along the following lines:
	
viewSomething
	| view |
	view := MOViewRenderer new.
	self viewSomethingOn: view.
	view open.
	
viewSomethingOn: view
	view nodes: ... '