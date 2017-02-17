testing
hasReturnValue
	^self return notNil and: [ self return ~= self receiver ]