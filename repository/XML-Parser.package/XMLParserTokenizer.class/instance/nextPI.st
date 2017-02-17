tokenizing
nextPI
	"skip ?"
	streamReader next.
	self nextPIWithTarget: self nextPITarget.