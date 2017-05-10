*XML-Parser
isXMLNCNameStartChar
	"should be the same as isXMLNameStartChar except without a test for $:"

	| tempValue |

	(tempValue := self asciiValue) <= 16r7A "$z asciiValue hex"
		ifTrue: [
			tempValue >= 16r61 "$a asciiValue hex"
				ifTrue: [^ true].

			tempValue <= 16r5A "$Z asciiValue hex"
				ifTrue: [^ tempValue >= 16r41]. "$A asciiValue hex"

			^ tempValue == 16r5F]. "$_ asciiValue hex; no $: test"

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