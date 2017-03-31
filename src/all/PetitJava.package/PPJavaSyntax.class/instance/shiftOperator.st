grammar-expressions
shiftOperator 
	self flag: 'maybe it should be detokenized, check the behavior with javac'.

	^ (self tokenFor: '<<')
	/ (self tokenFor: '>>>')
	/	(self tokenFor: '>>')