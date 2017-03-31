wizard panes transition
performNextButtonAction
	"this method is run when a next button is pressed"
	
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
			tmpCurrentPane failingConditions: #().
			(wizardPanes at: currentPane) doClose.
			currentPane := currentPane  + 1.
			(wizardPanes at: currentPane ) doOpen. 
		]
		ifFalse: [
			tmpCurrentPane failingConditions: tmpProblems 
			].
	