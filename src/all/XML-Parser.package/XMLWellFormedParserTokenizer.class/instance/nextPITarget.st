tokenizing
nextPITarget
	"PITarget	   ::=   	Name - (('X' | 'x') ('M' | 'm') ('L' | 'l'))"
	| target isLowercaseReservedTarget |
	
	(target := self nextName) size = 3 "'xml' size"
		ifFalse: [^ target].

	isLowercaseReservedTarget := true.
	1 to: 3 do: [:i |
		('xml' at: i) == (target at: i)
			ifFalse: [
				('XML' at: i) == (target at: i)
					ifTrue: [isLowercaseReservedTarget := false]
					ifFalse: [
						"not (('X' | 'x') ('M' | 'm') ('L' | 'l'))"
						^ target]]].
	isLowercaseReservedTarget
		ifFalse: [
			"a reserved target other than 'xml'"
			self errorReservedPITarget: target].
	context isXMLDeclarationContext
		ifFalse: [
			"an 'xml' declaration out of place"
			self errorXMLDeclarationNotAtStart].
	^ nil.