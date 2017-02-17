accessing
nodes
	"returns the internal node list; safe to modify, but adding or removing nodes
	from it will have the effect of adding or removing them from the receiver"

	^ nodes ifNil: [nodes := self nodeListClass observer: self]