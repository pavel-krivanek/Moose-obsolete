instance creation
versionString
	"Take the removal of the standard version method on Smalltalk into account for Squeak :-( "

	^(Smalltalk
		at: #SystemVersion
		ifAbsent: [^Smalltalk version]) current version