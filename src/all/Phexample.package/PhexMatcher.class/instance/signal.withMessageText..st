expecting-error
signal: errorClass withMessageText: message

	receiver on: Exception do: [ :ex | 
		(self should: ex) beKindOf: errorClass.
		message isBlock 
			ifTrue: [ message value: ex messageText ]
			ifFalse: [ (self should: ex messageText) = message ].
		^self].
	self expect: false
		 describeShould: [ 'Should raise <1p> but was none' expandMacrosWith: errorClass]
		 describeShouldNot:  [ 'Should not raise <1p> but did' expandMacrosWith: errorClass].