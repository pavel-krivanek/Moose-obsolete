instance creation
multiplicityOn: aPair
	| el |
	el := OPUMLMultiplicityElement new.
	aPair first ifNotNil: [ el lowerValue: (OPUMLLiteralInteger new value: aPair first) ].
	aPair second
		ifNotNil: [ el upperValue: (OPUMLLiteralUnlimitedNatural new value: aPair second) ].
	^ el