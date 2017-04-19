tests
testBasic

	| b |
	b := RTMondrian new.
	b shape box.
	b nodes: Collection withAllSubclasses.
	b view @ RTFindInAView.
	b build.
