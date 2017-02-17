concern building
composite: aString meaning: anExplanationString with: aBlock 
	| state |
	state := self shallowCopy.
	self root: (self concern: ((
		REPCompositeConcern on: self model) 
			label: aString; 
			explanation: anExplanationString;
			yourself)).
	aBlock ensure: [ self copyFrom: state ]