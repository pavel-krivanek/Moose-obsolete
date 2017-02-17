addition / removal
addPane: aWizardPane  
	"add the WizardPane aWizardPane at the end of the panes list of this wizard control. Therefore, this pane will be the last one to be displayed"
	
	aWizardPane wizardControl: self.
	wizardPanes add: aWizardPane.
	^ aWizardPane 
