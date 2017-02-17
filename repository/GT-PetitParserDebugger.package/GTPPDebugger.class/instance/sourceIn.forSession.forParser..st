building presentations
sourceIn: aComposite forSession: aSession forParser: selectedParser

	aComposite pharoMethod
		title: 'Production';
		useExplicitNotNil;
		display: [ self sourceCodeFrom: selectedParser inContext: self session stream ];
		smalltalkClass: [ aSession rootParser class ]