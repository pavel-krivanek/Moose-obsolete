accessing
parentEnum: anEnum
	parentEnum := FMMultivalueLink 
		on: self
		update: #values
		from: self parentEnum
		to: anEnum