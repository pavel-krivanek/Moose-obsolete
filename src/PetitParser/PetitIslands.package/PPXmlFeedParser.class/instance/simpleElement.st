xmlSupport
simpleElement
	^ (
		(('<' asParser, stringValue trim, '>' asParser) ==> #second),
		stringValue,
		(('</' asParser, stringValue trim, '>' asParser) ==> #second)
	) ==> [ :elements |
		(elements first = elements third) 
		ifTrue: [ Array with: elements first with: elements second ]
		ifFalse: [ PPFailure message: 'malformed element' ]
 	]