tests
testBackground
	| compo b group1 group2 |
	compo := RTComposer new.
	b := RTMondrian new.
	b view: compo view.
	group1 := b nodes: (1 to: 3).
	b build.
	compo group: #g1.
	b := RTMondrian new.
	b view: compo view.
	group2 := b nodes: (1 to: 4).
	b build.
	compo group: #g2.
	compo layout: RTVerticalLineLayout new alignCenter.
	self assert: group1 center equals: 25 @ 3.
	self assert: group2 center equals: 25 @ 18.
	compo setBackgroundColor: Color red forGroup: #g1.
	self assert: group1 center equals: 25 @ 3.
	self assert: group2 center equals: 25 @ 18