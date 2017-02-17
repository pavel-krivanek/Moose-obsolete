as yet unclassified
testTrimAlign
	p := (setIl, a) trimLeft, a trimAlign.

	self assert: p parse: '  a
  a'.

	self assert: p fail: '  a
 a'.

		self assert: p fail: '  a
    a'.