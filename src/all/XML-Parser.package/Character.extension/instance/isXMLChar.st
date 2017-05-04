*XML-Parser
isXMLChar
	"Range tests are faster and use less memory than a BitmapCharacterSet, and
	a temp is used because Character in newer SpurVM images has no 'value'
	inst var.
	
	Char ::=
		#x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]"

	| tempValue |

	(tempValue := self asciiValue) >= 16r20
		ifTrue: [
			tempValue <= 16rD7FF
				ifTrue: [^ true].

			tempValue >= 16rE000
				ifFalse: [^ false].
			tempValue <= 16rFFFD
				ifTrue: [^ true].

			tempValue >= 16r10000
				ifFalse: [^ false].
			^ tempValue <= 16r10FFFF].

	tempValue == 16r9
		ifTrue: [^ true].
	tempValue == 16rA
		ifTrue: [^ true].
	^ tempValue == 16rD.