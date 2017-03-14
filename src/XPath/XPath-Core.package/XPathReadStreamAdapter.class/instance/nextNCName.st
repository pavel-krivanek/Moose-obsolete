accessing
nextNCName
	"returns the next non-qualified name or nil"

	(self peekPushedBackToken notNil
		and: [self peekPushedBackToken isNCNameToken])
		ifTrue: [^ self nextPushedBackToken value].

	writeStream reset.
	self peek isXMLNCNameStartChar
		ifFalse: [^ nil].
	writeStream nextPut: self next.

	[self peek isXMLNCNameChar]
		whileTrue: [writeStream nextPut: self next].
	^ writeStream contents.