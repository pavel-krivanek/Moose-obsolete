*XML-Writer-Core
isXMLWriterNameStartChar
	"Range tests are faster and use less memory than a BitmapCharacterSet, and
	a temp is used because Character in newer SpurVM images has no 'value'
	inst var.
	
	NameStartChar ::=
		':' | [A-Z] | '_' | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] |
		[#x370-#x37D] | [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] |
		[#x2C00-#x2FEF] | [#x3001-#xD7FF] | [#xF900-#xFDCF] | [#xFDF0-#xFFFD] |
		[#x10000-#xEFFFF]"

	| tempValue |

	(tempValue := self asciiValue) <= 16r7A "$z asciiValue hex"
		ifTrue: [
			tempValue >= 16r61 "$a asciiValue hex"
				ifTrue: [^ true].

			tempValue >= 16r41 "$A asciiValue hex"
				ifTrue: [
					tempValue <= 16r5A "$Z asciiValue hex"
						ifTrue: [^ true].
					^ tempValue == 16r5F]. "$_ asciiValue hex"
	
			^ tempValue == 16r3A]. "$: asciiValue hex"

	tempValue <= 16r200D
		ifTrue: [
			tempValue <= 16r2FF
				ifTrue: [
					tempValue >= 16rD8
						ifTrue: [
							tempValue >= 16rF8
								ifTrue: [^ true].
							^ tempValue <= 16rF6]
						ifFalse: [
							tempValue >= 16rC0
								ifFalse: [^ false].
							^ tempValue <= 16rD6]]
				ifFalse: [
					tempValue >= 16r37F
						ifTrue: [
							tempValue >= 16r200C
								ifTrue: [^ true].
							^ tempValue <= 16r1FFF]
						ifFalse: [
							tempValue <= 16r37D
								ifFalse: [^ false].
							^ tempValue >= 16r370]]]
	ifFalse: [
		tempValue <= 16rD7FF
			ifTrue: [
				tempValue >= 16r2C00
					ifTrue: [
						tempValue >= 16r3001
							ifTrue: [^ true].
						^ tempValue <= 16r2FEF]
					ifFalse: [
						tempValue <= 16r218F
							ifFalse: [^ false].
						^ tempValue >= 16r2070]]
			ifFalse: [
				tempValue >= 16rFDF0
					ifTrue: [
						tempValue >= 16r10000
							ifTrue: [^ tempValue <= 16rEFFFF].
						^ tempValue <= 16rFFFD]
					ifFalse: [
						tempValue <= 16rFDCF
							ifFalse: [^ false].
						^ tempValue >= 16rF900]]].