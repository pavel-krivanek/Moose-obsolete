initialization
initialize
	super initialize.
	self text: [ :model | model asString ].
	shouldWrap := false.
	font := RTTheme current textFont.
	fontSize := RTTheme current textSize.
	color := RTTheme current textColor