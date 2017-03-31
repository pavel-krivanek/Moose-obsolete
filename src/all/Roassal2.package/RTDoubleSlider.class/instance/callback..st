accessing
callback: aTwoArgBlock
	"everytime the slider is moved the aTwoArgBlock will be evaluated with 2 arguments which correspond 
	to the position of the 2 cursors of the double slider, from the configured min value to the configured max value"
	callback := aTwoArgBlock