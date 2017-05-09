*XML-Parser
isXMLNCNameChar
	"should be the same as isXMLNameChar except without a test for $:"

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

			tempValue >= 16r30 "$0 asciiValue hex"
				ifTrue: [^ tempValue <= 16r39]. "$9 asciiValue hex; no $: test"

			tempValue == 16r2D "$- asciiValue hex"
				ifTrue: [^ true].
			^ tempValue == 16r2E]. "$. asciiValue hex"

	tempValue <= 16r2040
		ifTrue: [
			tempValue <= 16r36F
				ifTrue: [	
					tempValue <= 16rF6
						ifTrue: [
							tempValue <= 16rD6
								ifFalse: [^ tempValue >= 16rD8].
							tempValue >= 16rC0
								ifTrue: [^ true].
							^ tempValue == 16rB7]
						ifFalse: [
							tempValue <= 16r2FF
								ifTrue: [^ tempValue >= 16rF8].
							^ tempValue >= 16r300]]
				ifFalse: [
					tempValue <= 16r1FFF
						ifTrue: [	
							tempValue <= 16r37D
								ifFalse: [^ tempValue >= 16r37F].
							^ tempValue >= 16r370]
						ifFalse: [
							tempValue <= 16r200D
								ifTrue: [^ tempValue >= 16r200C].
							^ tempValue >= 16r203F]]]
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
					tempValue <= 16rFFFD
						ifTrue: [
							tempValue <= 16rFDCF
								ifTrue: [^ tempValue >= 16rF900].
							^ tempValue >= 16rFDF0]
						ifFalse: [
							tempValue >= 16r10000
								ifFalse: [^ false].
							^ tempValue <= 16rEFFFF]]].