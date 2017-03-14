tests
testSimpleRun

	| b |
	b := RTMondrian new.
	b nodes: (1 to: 20).
	b edges connectFrom: [ :v | v // 3 ].
	b build.
	self classToTest new 
		doNotUseProgressBar;
		on: b view elements.