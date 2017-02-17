accessing
attributes
	| dictionary |

	dictionary := self attributesClass new: self size.
	self do: [:each |
		dictionary
			at: each name
			put: each value].
	^ dictionary.