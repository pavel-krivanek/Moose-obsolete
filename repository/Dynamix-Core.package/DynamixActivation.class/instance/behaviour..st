accessing
behaviour: aBehaviouralEntity
	behaviour := FMMultivalueLink 
		on: self
		update: #activations
		from: self behaviour
		to: aBehaviouralEntity