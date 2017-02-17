accessing - wizard mangement
outputValue

	"this method is an abstract method as only the subclass itself know what is the information to send to the WizardPane which will send it  to the wizarControl "
	(self list isNil not and: [self list isEmpty not])
		ifTrue: [^ self selectedItem]
		ifFalse: [^ nil].
		
	