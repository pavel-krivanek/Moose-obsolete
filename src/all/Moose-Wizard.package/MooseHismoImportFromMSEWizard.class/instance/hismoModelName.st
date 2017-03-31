private
hismoModelName

	| hismoModelName |
	
	hismoModelName := wizardInformations at: #hismoModelName.
	hismoModelName isEmptyOrNil ifTrue: [^ 'HismoModel'].
	^ hismoModelName