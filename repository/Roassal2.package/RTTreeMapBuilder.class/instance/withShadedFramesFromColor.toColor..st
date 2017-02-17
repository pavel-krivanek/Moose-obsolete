customizing
withShadedFramesFromColor: fromColor toColor: toColor

	| normalizer |
	
	normalizer := RTNColorLinearNormalizer 
		inContext: self elements 
		withCommand: [ :e | weight rtValue: e ] 
		lowColor: fromColor highColor: toColor.
	self elements do: [ :e | e trachelShape strokePaint: (normalizer rtValue: e ) ].