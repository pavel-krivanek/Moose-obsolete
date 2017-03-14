accessing
accessor: aBehaviouralEntity 
	accessor := FMMultivalueLink 
		on: self
		update: #accesses
		from: self accessor
		to: aBehaviouralEntity