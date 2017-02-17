tests
testCleaningViewWithCallback
	| v parent child |
	v := RTView new.
	parent := RTBox new element.
	child := RTBox new element.
	parent addCallback: (TRRemoveCallback block: [ child remove ]).
	v
		add: parent;
		add: child.
	self assert: v numberOfElements equals: 2.
	v clean.
	self assert: v numberOfElements equals: 0