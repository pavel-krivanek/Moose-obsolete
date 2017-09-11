initialization
initialize
	super initialize.
	values := OrderedCollection new.
	self horizontal.
	colorPalette := RTMultiLinearColorForIdentity new.
	self barWidth: self defaultBarWidth height: self defaultBarHeight.
	
	labelConditionalBlock := true.
	labelColor := Color black