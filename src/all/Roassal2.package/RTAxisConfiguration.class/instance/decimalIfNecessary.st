configuration
decimalIfNecessary
	self labelConversion: [ :number | number asInteger = number
		ifTrue: [ number asInteger ]
		ifFalse: [ number asFloat ] ]