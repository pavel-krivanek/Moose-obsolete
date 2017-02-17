buttons actions
terminateButtonAction
	"action executed when the terminate button is pressed"
	self terminateButtonActions do: [:aBlock | aBlock value].
	self wizardPane terminateButtonAction.
	self wizardRenderer performTerminateButtonAction.