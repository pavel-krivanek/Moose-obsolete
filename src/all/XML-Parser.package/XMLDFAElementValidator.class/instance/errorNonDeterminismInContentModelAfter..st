private
errorNonDeterminismInContentModelAfter: anElement
	XMLValidationException
		formatSignal:
			'Content model for <{1}> becomes non-deterministic after <{2}>. ',
			'Rewrite it deterministically; for example "{3}" instead ',
			'of "{4}"'
		with: self element
		with: anElement
		with: '(a,(b|c))'
		with: '((a,b)|(a,c))'