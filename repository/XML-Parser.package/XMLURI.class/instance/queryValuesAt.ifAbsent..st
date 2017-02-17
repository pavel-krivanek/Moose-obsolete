accessing
queryValuesAt: aKey ifAbsent: aBlock
	"Returns the percent/plus-decoded values of the query string parameter
	aKey or the value of aBlock if there aren't any"

	| values |

	self
		queryValuesAt: aKey
		do: [:each |
			"only initialize if needed"
			(values ifNil: [values := OrderedCollection new])
				addLast: each].
	^ values ifNil: [aBlock value].