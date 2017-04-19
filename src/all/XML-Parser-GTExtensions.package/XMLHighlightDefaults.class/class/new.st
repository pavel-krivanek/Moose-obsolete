instance creation
new
	"if the theme was changed since last initialization, reset the defaults"
	self uiTheme = Smalltalk ui theme
		ifFalse: [self resetDefaults].

	^ super new.