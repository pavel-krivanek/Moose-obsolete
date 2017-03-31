accessing
return: aReference
	return := FMMultivalueLink 
		on: self
		update: #activationsWithReturn
		from: self return
		to: aReference