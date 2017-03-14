public access
translate
	"
	translate(<tx> [<ty>]), which specifies a translation by tx and ty. If <ty> is not provided, it is assumed to be zero.
	"
	| tx ty |

	tx := self nextNumber.
	self skipBlanks.
	ty := 0.
	(stream peek = $,) ifTrue: [
		stream next.
		self skipBlanks.
		ty := self nextNumber ifNil: [ 0 ]].
	
	transform translateX: tx Y: ty