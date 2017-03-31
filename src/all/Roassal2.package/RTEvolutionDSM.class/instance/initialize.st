initialization
initialize
	super initialize.
	self timeline: [ :evoline |
		nil ].
	self createObjectBlock: [ :assoc | | inst |
		inst := RTEvolutionLine new 
			xvalue: assoc key;
			yvalue: assoc value.
		inst timeline: (self timeline value: inst).
		inst ].