as yet unclassified
testTrimOnside
	p := (setIl, a) trimLeft, a trimOnside.

	self assert: p fail: '  a
  a'.

	self assert: p fail: '  a
 a'.

"	self assert: p parse: '  a   a'."
	self assert: p parse: '  a
    a'.