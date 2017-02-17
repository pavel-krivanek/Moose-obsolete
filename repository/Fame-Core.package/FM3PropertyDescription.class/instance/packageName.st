accessing
packageName
	"always returns the package name to which this property belongs, be it an extension or a core element"

	^ self isExtension 
			ifFalse: [ self owner packageName ]
			ifTrue: [ package name ]