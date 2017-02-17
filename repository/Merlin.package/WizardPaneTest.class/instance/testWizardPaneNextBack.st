tests
testWizardPaneNextBack
	
	wizardControl open.
	self assert: wizardControl currentPane == wizardControl wizardPanes first.
	wizardControl performNextButtonAction.
	self assert: wizardControl  currentPane == wizardControl wizardPanes second.
	wizardControl performPreviousButtonAction.
	self assert: wizardControl  currentPane == wizardControl wizardPanes first.