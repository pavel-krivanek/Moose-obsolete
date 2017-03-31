accessing
name

	^self privateState attributeAt: #privateDescription ifAbsent:[#group]
	