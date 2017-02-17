accessing
useLatePopulateContents

	"by default, the morph contents of the part will always be re-computedt every time the pane call it, ie when the pane open. If you want to set this contents only once (and always memorize the state of your pane), use this method with 'false' "
	^ useLatePopulateContents. 