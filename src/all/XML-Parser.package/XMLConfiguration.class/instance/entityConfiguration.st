accessing
entityConfiguration
	^ entityConfiguration ifNil: [entityConfiguration := DTDEntityConfiguration new]