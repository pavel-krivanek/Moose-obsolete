naming conventions
famixNamespaceNameFromFamixFullName: aFullName
	" (aFullName copyFrom: 1 to: (aFullName lastIndexOf: $:) - 2) asSymbol"

	^(aFullName
		copyFrom: 1
		to:
			aFullName size
				-
					(aFullName reverse
						indexOfSubCollection: self famixNamespaceSeparator
						startingAt: 1) - 1) asSymbol