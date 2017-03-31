sources
exampleTopLabelRotation

	| dsm v keys |
	v := Array 
		with: (#A -> (Array with: #B with: #C)) 
		with: (#B -> (Array with: #A) ).
	keys := #(A B C).
	dsm := RTDSM new.
	dsm rotation: 0.
	dsm objects: keys.
	dsm dependency: [ :k  | v asDictionary at: k ifAbsent: #() ].
	^ dsm
