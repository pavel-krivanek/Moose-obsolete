visiting
accept
	self declaredTypeName
		ifNotNil: [ :name | self model declaredType: (OPUMLClass new name: name) ].
	self model
		unit: self unitInput text;
		defaultValue: (self defaultValue ifNotNil: [ :val | OPUMLExpression new valueExpression: val ]).
	onAccept value