private
filterDate: aString

	self datePattern isEmptyOrNil
		ifTrue: [ ^ aString ].
	^ (self colllectDateInString: aString) asDateWithPattern: self datePattern