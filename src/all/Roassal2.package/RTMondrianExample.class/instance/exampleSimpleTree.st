sources
exampleSimpleTree

	| b |
	b := RTMondrian new.
	b shape rectangle size: 10.
	b nodes: (1 to: 100).
	b edges connectFrom: [ :v | v // 2 ] to: #yourself.
	b layout tree.
	b build.
	^ b view