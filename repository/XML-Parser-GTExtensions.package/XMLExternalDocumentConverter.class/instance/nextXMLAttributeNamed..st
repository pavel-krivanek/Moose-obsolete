private 
nextXMLAttributeNamed: anAttributeName
	| quote nextChar |

	self skipSeparators.
	(self expectNextAll: anAttributeName)
		ifNil: [^ nil].

	self skipSeparators.
	self next == $=
		ifFalse: [^ nil].
	self skipSeparators.

	((quote := self next) == $"
		or: [quote == $'])
		ifFalse: [^ nil].

	writeStream reset.
	[(nextChar := self next) isNil
		or: [nextChar == quote]]
		whileFalse: [writeStream nextPut: nextChar].

	nextChar
		ifNil: [^ nil]
		ifNotNil: [^ writeStream contents].