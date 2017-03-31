initialization
testMenu: aMenu
	^ aMenu
		add: 'Find...' selector: #find;
		addLine;
		add: 'Evaluate' target: self selector: #parse;
		add: 'Inspect...' target: self selector: #parseAndInspect;
		add: 'Debug' target: self selector: #debugParse;
		yourself