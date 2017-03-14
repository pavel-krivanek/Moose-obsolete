examples
example03
	<script: 'self example03 inspect'>
	| values b |
	values := (Array
		with: (1 -> #(A B C))
		with: (2 -> #(A C))
		with: (3 -> #(B))
		with: (4 -> #())) asDictionary.

	b := RTDSM new.
	b objectsX: #(A B C).
	b objectsY: #(1 2 3 4).
	b dependency: [ :v | values at: v ].
	^ b