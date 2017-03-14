naming conventions
famixNameFromFamixFullName: aFullName
	" (aFullName copyFrom: 1 to: (aFullName lastIndexOf: $:) - 2) asSymbol"

	^(aFullName
		copyFrom:
			aFullName size
				-
					(aFullName reverse
						indexOfSubCollection: self famixNamespaceSeparator
						startingAt: 1) + 2
		to: aFullName size) asSymbol