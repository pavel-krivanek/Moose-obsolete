sources
exampleSimpleTreeLayout
	| b |
	b := RTMondrian new.
	b shape rectangle size: 10; borderColor: Color black.
	b nodes: (1 to: 100).
	b edges connectFrom: [ :v | v // 2 ].
	b layout tree.
	b build.
	^ b view