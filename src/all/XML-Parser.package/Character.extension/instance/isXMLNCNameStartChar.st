*XML-Parser
isXMLNCNameStartChar
	"should be the same as isXMLNameStartChar except without a test for $:"

	| tempValue |

	(tempValue := self asciiValue) <= 16r7A "$z asciiValue hex"
		ifTrue: [
			tempValue >= 16r61 "$a asciiValue hex"
				ifTrue: [^ true].

			tempValue >= 16r41 "$A asciiValue hex"
				ifFalse: [^ false].
			tempValue <= 16r5A "$Z asciiValue hex"
				ifTrue: [^ true].

			^ tempValue == 16r5F]. "$_ asciiValue hex; no $: test"

	tempValue >= 16rC0
		ifFalse: [^ false].
	tempValue <= 16rD6
		ifTrue: [^ true].

	tempValue >= 16rD8
		ifFalse: [^ false].
	tempValue <= 16rF6
		ifTrue: [^ true].

	tempValue >= 16rF8
		ifFalse: [^ false].
	tempValue <= 16r2FF
		ifTrue: [^ true].

	tempValue >= 16r370
		ifFalse: [^ false].
	tempValue <= 16r37D
		ifTrue: [^ true].

	tempValue >= 16r37F
		ifFalse: [^ false].
	tempValue <= 16r1FFF
		ifTrue: [^ true].

	tempValue >= 16r200C
		ifFalse: [^ false].
	tempValue <= 16r200D
		ifTrue: [^ true].

	tempValue >= 16r2070
		ifFalse: [^ false].
	tempValue <= 16r218F
		ifTrue: [^ true].

	tempValue >= 16r2C00
		ifFalse: [^ false].
	tempValue <= 16r2FEF
		ifTrue: [^ true].

	tempValue >= 16r3001
		ifFalse: [^ false].
	tempValue <= 16rD7FF
		ifTrue: [^ true].

	tempValue >= 16rF900
		ifFalse: [^ false].
	tempValue <= 16rFDCF
		ifTrue: [^ true].

	tempValue >= 16rFDF0
		ifFalse: [^ false].
	tempValue <= 16rFFFD
		ifTrue: [^ true].

	tempValue >= 16r10000
		ifFalse: [^ false].
	^ tempValue <= 16rEFFFF.