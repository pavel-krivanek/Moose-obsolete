accessing - main pane line
removeWithouUnassociateSubComponentAt: anInteger
	"remove the subComponent of this this 'AbstractLine' located at the position an integer "
	"using this method, the sucomponent will only be remove from the Morphic pane, in other words it will just become non visible, but will still be associated and registred in the wizard pane"
	self mainPaneLine removeWithouUnassociateSubComponentAt: anInteger.