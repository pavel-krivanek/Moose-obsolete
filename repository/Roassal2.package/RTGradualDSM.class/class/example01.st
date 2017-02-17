examples
example01
	<script: 'self example01 inspect'>
	| dsm values |
	dsm := RTGradualDSM new.

	values := (Array 
		with: (1->#(2 3 1 5 6)) 
		with: (2 -> #(1 2 1 1 1 1 4))
		with: (3 -> #(1 2 5 3 2)) 
		with: (4 -> #(2 5 1)) 
		with: (5 -> #()) 
		with: (6 -> #(4)) ) asDictionary.
	dsm objects: (1 to: 6).
	dsm score: [ :assoc | (values at: assoc key) occurrencesOf: assoc value ].
	^ dsm