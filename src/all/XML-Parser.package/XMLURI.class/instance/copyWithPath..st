copying
copyWithPath: aString
	| newRawPathSegments |

	newRawPathSegments := self rawPathSegments copyEmpty.
	$/
		xmlSplit: aString
		do: [:each |
			newRawPathSegments addLast: (self percentEncode: each)].
	^ self copy rawPathSegments: newRawPathSegments.