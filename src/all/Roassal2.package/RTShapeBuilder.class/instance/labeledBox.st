shapes
labeledBox
	"
	A box with a label in it.

	b := RTMondrian new.
	b shape labeledBox.
	b nodes: Dictionary withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout sugiyama.
	b
	"
	self composite: [ :comp |
		comp add: RTBox new.
		comp add: RTLabel new.
		comp allOfSameSizeWithPadding.
		 ]