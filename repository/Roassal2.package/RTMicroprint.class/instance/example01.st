as yet unclassified
example01
	<gtExample>
	<noTest>
	| b |
	b := RTMicroprint new.
	b lineMatching: '*view*' color: Color red trans.
	b lineMatching: '*roassal*' color: Color green trans.
	b lineMatching: '*shape*' color: Color blue trans.
	b texts: (RTBuilder methods collect: #getSource).
	^ b