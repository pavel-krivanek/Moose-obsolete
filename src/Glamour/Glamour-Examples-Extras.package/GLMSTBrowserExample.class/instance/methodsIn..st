accessing
methodsIn: a
	a list
		useExplicitNotNil;
		when: [ :environment :class :protocol | class notNil and: [ protocol notNil ] ];
		display: [ :environment :class :protocol | environment selectorsFor: protocol in: class ];
		sorted.
	^ a list
		useExplicitNotNil;
		when: [ :environment :class :protocol | class notNil and: [ protocol isNil ] ];
		display: [ :environment :class :protocol | environment selectorsForClass: class ];
		sorted