class initialization
initializePlatformSpecificLineBreak
	"'Smalltalk os platformName' is used for compatibility with GS and Squeak
	which don't have the OSPlatform classes, and also instead of the shorter
	'Smalltalk platformName' which doesn't work in all Pharos"
	(Smalltalk os platformName asLowercase beginsWith: 'win')
		ifTrue: [self platformSpecificLineBreak: String crlf]
		ifFalse: [self platformSpecificLineBreak: String lf].