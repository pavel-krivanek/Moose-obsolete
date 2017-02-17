open
open
	"launch the wizard system by opening the first wizard pane."
	
	wizardPanes isEmpty ifTrue: [ ^ self ].
	currentPane := 1.
	(wizardPanes at: currentPane) doOpen.
	self renderer open: self.