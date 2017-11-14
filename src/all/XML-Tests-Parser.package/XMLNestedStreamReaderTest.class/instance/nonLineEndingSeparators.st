accessing
nonLineEndingSeparators
	^ self separators reject: [:each |
		each = self cr
			or: [each = self lf]]