accessing - morphs
validateButtonMorph
	"return a button opening the context frame when clicked"
	
	^ validateButtonMorph ifNil: [
		validateButtonMorph := (PluggableButtonMorph
			on: self getState: nil action: #validateButtonAction)
	 			label: 'Validate';
				enable;
				yourself
		]