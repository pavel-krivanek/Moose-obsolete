wizard panes transition
performTerminateButtonAction
	"by default, just close the last current pane. Override this method if you want to create a subclass of WizardControl making a specific action"
	|tmpCurrentPane tmpProblems|
	tmpCurrentPane := wizardPanes at: currentPane.
	tmpProblems := OrderedCollection new.
	tmpCurrentPane conditions keysAndValuesDo:  [:aString :aBlock |
		(aBlock value: self wizardInformations) ifFalse: [
			tmpProblems add: aString
			]
		]. 
	tmpProblems isEmpty 
		ifTrue: [
			(wizardPanes at: currentPane) doClose.
			currentPane := currentPane + 1.
			self finalActionBlock ifNotNil: [
				self finalActionBlock value: self wizardInformations
			].
		]
		ifFalse: [
			tmpCurrentPane failingConditions: tmpProblems 
			].
	
		