running
setUp
	super setUp.
	"| shape |
	true ifTrue: [ ^ self skip ].
	shape := RTBox new size: 20.
	(el := shape element) translateTo: 0 @ 0.
	(elX := shape element) translateTo: 100 @ 0.
	(elD := shape element) translateTo: -100 @ -100.
	edgeX := RTLine new
		attachPoint: RTRectangleAttachPoint new;
		edgeFrom: el to: elX.
	edgeD := RTLine new
		attachPoint: RTRectangleAttachPoint new;
		edgeFrom: el to: elD"