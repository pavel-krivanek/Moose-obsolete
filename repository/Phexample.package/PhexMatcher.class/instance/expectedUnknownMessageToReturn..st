private
expectedUnknownMessageToReturn: expected 
	state := state copyWithout: #be.
	^self expect: [ receiver = expected ]
		describeShould: [ 'expected #<1s> to be <2p>' 
				expandMacrosWith: self findNameOfUnknownMessage
				with: expected ]
		describeShouldNot: [ 'did not expect #<1s> to be <2p>' 
				expandMacrosWith: self findNameOfUnknownMessage
				with: expected ]
	