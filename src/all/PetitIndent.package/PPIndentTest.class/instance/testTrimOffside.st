as yet unclassified
testTrimOffside
	p := (setIl, a) trimLeft, a trimOffside.

	self assert: p fail: '  a
  a'.

"	self assert: p parse: '  a a'."
	self assert: p parse: '  a
 a'.

		self assert: p fail: '  a
    a'.