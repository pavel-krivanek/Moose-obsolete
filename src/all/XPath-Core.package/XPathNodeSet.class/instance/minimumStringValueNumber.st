private
minimumStringValueNumber
	| minimum |

	self do: [:each | | number |
		number := each stringValue asXPathNumber.
		minimum
			ifNil: [minimum := number]
			ifNotNil: [
				number < minimum
					ifTrue: [minimum := number]]].
	^ minimum.