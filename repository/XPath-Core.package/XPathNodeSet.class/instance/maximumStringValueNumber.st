private
maximumStringValueNumber
	| maximum |

	self do: [:each | | number |
		number := each stringValue asXPathNumber.
		maximum
			ifNil: [maximum := number]
			ifNotNil: [
				number > maximum
					ifTrue: [maximum := number]]].
	^ maximum.