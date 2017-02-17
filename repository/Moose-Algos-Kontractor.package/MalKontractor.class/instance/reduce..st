public
reduce: aString

	|reducedString|
	reducedString := self removeWordsIn: aString.
	[reducedString size > self upTo] whileTrue: [
			reducedString := self removeOne: reducedString].
	^reducedString  

