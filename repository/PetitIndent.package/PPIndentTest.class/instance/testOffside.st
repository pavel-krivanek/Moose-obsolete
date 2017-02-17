as yet unclassified
testOffside
	p := (setIl, a) trimLeft, (offside, a).

	self assert: p fail: '  a
  a'.

	self assert: p parse: '  a
 a'.

		self assert: p fail: '  a
    a'.