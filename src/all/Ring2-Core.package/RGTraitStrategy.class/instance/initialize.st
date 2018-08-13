testing
initialize

	super initialize.
	
	"classTrait is set in the superclass"
	comment := self unresolvedValue: self defaultComment.
	package := self unresolvedValue: self defaultPackage.
