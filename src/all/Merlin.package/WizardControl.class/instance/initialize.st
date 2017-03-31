initialize-release
initialize
	
	super initialize.
	wizardInformations := Dictionary new.
	branches := OrderedCollection new add: OrderedCollection new; yourself.
	wizardPanes := branches at: 1.
	currentPane :=1.


