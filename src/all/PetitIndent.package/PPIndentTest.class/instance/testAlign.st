as yet unclassified
testAlign
	p := (setIl, a) trimLeft, (align, a).

	self assert: p parse: '  a
  a'.

	self assert: p fail: '  a
 a'.

		self assert: p fail: '  a
    a'.