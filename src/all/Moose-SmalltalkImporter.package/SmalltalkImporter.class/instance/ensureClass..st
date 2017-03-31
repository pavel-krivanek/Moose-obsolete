public-entity-creation
ensureClass: aClass 
	"aClass is aSmalltalk. This method returns a FAMIXClass" 
	 
	^classes 
		at: aClass 
		ifAbsent: [self createClass: aClass]