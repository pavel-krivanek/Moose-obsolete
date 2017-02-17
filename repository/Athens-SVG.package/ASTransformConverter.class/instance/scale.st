accessing
scale
	"
	scale(<sx> [<sy>]), which specifies a scale operation by sx and sy. If <sy> is not provided, it is assumed
to be equal to <sx>.
	
	"
	
	| sx sy |
	
	sx := self nextNumber.
	self skipBlanks.
	sy := self nextNumber ifNil: [ sx ].
	
	transform scaleX: sx Y: sy