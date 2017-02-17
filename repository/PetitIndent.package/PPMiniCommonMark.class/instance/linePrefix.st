lines
linePrefix
	^ ((PPPossessiveRepeatingParser on: (#blank asParser ))
		setMax: 3;
		yourself),
	(#blank asParser not)
	==> #first