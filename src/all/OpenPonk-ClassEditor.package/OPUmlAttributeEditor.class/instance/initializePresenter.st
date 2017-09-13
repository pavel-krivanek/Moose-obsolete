initialization
initializePresenter
	super initializePresenter.
	self whenDropListChanged: booleanSelect select: booleanRadio.
	self whenDropListChanged: collectionSelect select: collectionRadio.
	self whenTextChanged: numberInput select: numberRadio.
	self whenTextChanged: unitInput select: numberRadio.
	self whenTextChanged: stringInput select: stringRadio.
	self whenTextChanged: codeInput select: codeRadio.
	noDefaultRadio
		whenActivatedDo: [ declaredType := [ nil ].
			defaultValue := [ nil ] ].
	numberRadio
		whenActivatedDo: [ declaredType := [ #Number ].
			defaultValue := [ numberInput text ] ].
	booleanRadio
		whenActivatedDo: [ declaredType := [ #Boolean ].
			defaultValue := [ booleanSelect selectedItem ] ].
	stringRadio
		whenActivatedDo: [ declaredType := [ #String ].
			defaultValue := [ self wrapString: stringInput text ] ].
	collectionRadio
		whenActivatedDo: [ declaredType := [ collectionSelect selectedItem ].
			defaultValue := [ collectionSelect selectedItem , ' new' ] ].
	codeRadio
		whenActivatedDo: [ declaredType := [ nil ].
			defaultValue := [ codeInput text ] ]