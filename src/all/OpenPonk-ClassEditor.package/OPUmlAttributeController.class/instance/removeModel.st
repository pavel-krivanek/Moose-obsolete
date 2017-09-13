removing
removeModel
	self remove.
	"could be any of those, so just nil all of them"
	model owningClass: nil.
	model datatype: nil.
	model interface: nil