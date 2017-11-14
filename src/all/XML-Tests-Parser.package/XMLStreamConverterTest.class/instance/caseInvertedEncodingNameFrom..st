accessing
caseInvertedEncodingNameFrom: anEncodingName
	| shouldUppercase |

	^ anEncodingName collect: [:each |
		(shouldUppercase ifNil: [shouldUppercase := each isLowercase])
			ifTrue: [
				shouldUppercase := false.
				each asUppercase]
			ifFalse: [
				shouldUppercase := true.
				each asLowercase]]