sources
exampleReversedHorizontalTreeLayout

"The mondrian version is:
| b |
b := RTMondrian new.
b shape box size: 20; color: Color red trans.
b nodes: (1 to: 128).
b edges connectFrom: [ :v | v // 2 ].
b layout horizontalReversedTree.
b 
"
	| v es eb |
	v := RTView new.
	es := RTBox new size: 10; elementsOn: (1 to: 100).
	v addAll: es.

	eb := RTEdgeBuilder new.
	eb view: v.
	eb objects: (1 to: 100).
	eb connectFrom: [ :value | value // 2 ].

	RTHorizontalTreeLayout new horizontallyReverse; on: es.
	^ v