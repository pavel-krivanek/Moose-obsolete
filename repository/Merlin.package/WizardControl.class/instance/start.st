open
start
	"launch the wizard system but does not open any UI window"
	
	wizardPanes isEmpty ifTrue: [ ^ self ].
	currentPane := 1.
	(wizardPanes at: currentPane) doOpen.