private
process: anExample withArguments: aBlock
	anExample hasValidDependencies
		ifFalse: [ ^ self handleDependencyErrorFor: anExample ].
	aBlock value.	
	self action ifNotNil: [ self example == anExample ifFalse: [ self action value: anExample ] ]