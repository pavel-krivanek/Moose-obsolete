accessing
buttonMorph: aModel
	| button |
	button := UITheme current 
		newButtonIn: nil 
		for: aModel 
		getState: nil
		action: #execute
		arguments: nil 
		getEnabled: nil 
		label: aModel buttonLabel
		help: nil.
	aModel glamourAction icon ifNotNil: [ :anIcon |
		button 
			icon: anIcon;
			label: aModel buttonLabel ].
	^ button