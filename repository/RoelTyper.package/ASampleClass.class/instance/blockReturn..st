blocks typing
blockReturn: arg
	"(TypeCollector typeTmpsIn: (self>>#blockReturn:) ofClass: self) "
	
	self byParam: [:bu | ^bu].
	g := arg.
	