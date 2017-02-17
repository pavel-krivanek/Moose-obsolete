accessing
receiver: aReference
	receiver := FMMultivalueLink 
		on: self
		update: #activationsWithReceiver
		from: self receiver
		to: aReference