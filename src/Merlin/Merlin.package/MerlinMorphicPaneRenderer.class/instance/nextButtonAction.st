buttons actions
nextButtonAction
	"action executed when the next button is pressed"
	
	self nextButtonActions do: [:aBlock | aBlock value].
	self wizardPane nextButtonAction.
	self wizardRenderer performNextButtonAction.