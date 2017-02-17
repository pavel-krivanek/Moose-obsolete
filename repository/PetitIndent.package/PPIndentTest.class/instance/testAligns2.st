as yet unclassified
testAligns2
	p := (setIl, a) trim, (aligns, a).

	self assert: p parse: '  a
  a'.

	self assert: p fail: '  a
 a'.

		self assert: p fail: '  a
    a'.