accessing
accessors
	<MSEProperty: #accessors type: #FAMIXBehaviouralEntity> <multivalued> <derived>
	^ (self incomingAccesses collectAsSet: [ :each | each accessor ]) asMooseGroup