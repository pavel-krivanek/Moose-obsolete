testing
initializeUnresolved

	super initializeUnresolved.
	
	classTrait := RGUnresolvedValue recursive.
	comment := self unresolvedValue: self defaultComment.
	package := self unresolvedValue: self defaultPackage.
