private
sender

	^ context isNil ifFalse: [ context := context sender ]