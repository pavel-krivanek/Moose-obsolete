as yet unclassified
testOnside
	p := (setIl, a) trimLeft, (onside, a).

	self assert: p fail: '  a
  a'.

	self assert: p fail: '  a
 a'.

		self assert: p parse: '  a
    a'.