sources
exampleLabelledIf
	| b |
	b := RTPieBuilder new.
	b interaction popup.
	b objects: RTShape withAllSubclasses.
	b slice: #numberOfMethods.
	b normalizer distinctColor.	
	b labeledIf: [ :c | c numberOfMethods > 18 ].
	^ b