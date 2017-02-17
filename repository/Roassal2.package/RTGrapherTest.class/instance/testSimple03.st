tests
testSimple03

	| ds |
	b := RTGrapher new.
	ds := RTData new.
	ds interaction popup.
	ds points: RTShape withAllSubclasses.
	ds y: [ :cls | cls rtmethods size ].
	ds barShape rectangle color: Color lightBlue.
	b add: ds.
	b build.
	
	ds renderIn: RTView new.