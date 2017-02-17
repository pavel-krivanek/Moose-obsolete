RTGradualDSM build a Dependency Structural Matrix for a collection of objects and an arbitrary score function. The score is used to give a color to the cell.

For example, inspect the following:
[[[ 
	dsm := RTGradualDSM new.

	values := { 1->#(2 3 1 5 6) . 2 -> #(1 2 1 1 1 1 4) . 3 -> #(1 2 5 3 2) . 4 -> #(2 5 1) . 5 -> #() . 6 -> #(4) } asDictionary.
	dsm objects: (1 to: 6).
	dsm score: [ :assoc | (values at: assoc key) occurrencesOf: assoc value ].
	dsm.
]]]