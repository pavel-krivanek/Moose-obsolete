tokenizing
nextPITarget
	"PITarget	   ::=   	Name - (('X' | 'x') ('M' | 'm') ('L' | 'l'))"
	| nextChar isReservedTarget isLowercaseReservedTarget length |

	nameStream reset.
	(nextChar := streamReader next) == $x
		ifTrue: [
			isReservedTarget := true.
			isLowercaseReservedTarget := true]
		ifFalse:[
			nextChar == $X
				ifTrue: [isReservedTarget := true]
				ifFalse: [
					"nil understands isXMLNameStartChar so it does
					not need to be tested for"
					nextChar isXMLNameStartChar
						ifFalse: [self errorExpectedPITarget].
					isReservedTarget := false].
			isLowercaseReservedTarget := false].
	nameStream nextPut: nextChar.
	length := 1.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [
			nextChar := streamReader next.
			length := length + 1.
			isReservedTarget
				ifTrue: [
					(length <= 3
						and: [
							nextChar == ('xml' at: length)
								or: [
									isLowercaseReservedTarget := false.
									nextChar == ('XML' at: length)]])
						ifFalse: [
							isReservedTarget := false.
							isLowercaseReservedTarget := false]].
			nameStream nextPut: nextChar].
	
	(isReservedTarget
		and: [length = 3])
		ifTrue: [
			isLowercaseReservedTarget
				ifTrue: [
					context isXMLDeclarationContext
						ifFalse: [self errorXMLDeclarationNotAtStart].
					"return nil to indicate it's an XML declaration, not a PI"
					^ nil].
			"a reserved target other than lowercase 'xml' for XML declarations
			is never allowed"
			self errorReservedPITarget: nameStream contents].
	^ nameStream contents.