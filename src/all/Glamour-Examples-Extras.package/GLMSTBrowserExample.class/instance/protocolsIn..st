accessing
protocolsIn: a
	^ a list
		when: [ :environment :class | class notNil ];
		display: [ :environment :class | environment protocolsFor: class ];
		sorted