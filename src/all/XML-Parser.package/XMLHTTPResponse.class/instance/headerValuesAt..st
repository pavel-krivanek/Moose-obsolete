accessing
headerValuesAt: aKey
	| values |

	values := OrderedCollection new.
	self
		headerValuesAt: aKey
		do: [:each | values addLast: each].
	^ values.