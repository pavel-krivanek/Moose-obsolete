accessing - wizard mangement
outputValue 

		"this method is an abstract method as only the subclass itself know what is the information to send to the WizardPane which will send it  to the wizarControl "
		"textField  acceptTextInModel."
		"^ textEntryContents ."
		"^textField textMorph asText"
		
		returnSuffixAndPrefix 
			ifTrue: [
				^ prefix, self textEntryContents , suffix. 
				]
			ifFalse: [
				^ self textEntryContents  
				]
		