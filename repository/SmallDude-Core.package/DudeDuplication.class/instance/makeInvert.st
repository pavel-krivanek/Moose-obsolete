accessing
makeInvert 
	"Makes the invert Duplication object starting with a Duplication" 
	 
	| invertSB invertSignature | 
	invertSB := '' , signature. 
	1 
		to: invertSB size 
		do: 
			[:i |  
			(invertSB at: i) = $D 
				ifTrue: [invertSB at: i put: $I] 
				ifFalse: [(invertSB at: i) = $I ifTrue: [invertSB at: i put: $D]]]. 
	invertSignature := '' , invertSB. 
	^DudeDuplication refCode: duplicateCode dupCode: referenceCode signature: 
			invertSignature