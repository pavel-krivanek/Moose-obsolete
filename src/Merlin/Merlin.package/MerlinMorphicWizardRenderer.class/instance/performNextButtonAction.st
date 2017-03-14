buttonsActions
performNextButtonAction
	"this method is run when a next button is pressed"
	
	self dialogWindow close.
	"self currentIndex: (self currentIndex + 1)."
	^self doOpen: (self currentPane renderOnMerlinRenderer: self)