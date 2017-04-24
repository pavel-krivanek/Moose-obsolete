*Roassal2
isReferencedBy: aClass 
	"
	Return true or false on whether the class receiver is referenced by aClass
	
	Halt isReferencedBy: Object 
	"
	^ aClass dependentClasses includes: self 