examples
image01
	<gtExample>
	
	"
	self new image01
	"

	| v c s |
	v := RTView new.
	c := v canvas.
	s := TRBitmapShape new.
	s form: RTIcon roassal.
	c addShape: s.
	^ v
