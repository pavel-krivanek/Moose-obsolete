clause-elements
foreignKeyClauseOnPart

	^on , (delete / update ) ,
	( ( set , null ) /
	( set , default ) /
	cascade /
	restrict /
	noAction )