accessing
iconAt: aData
	| color |
	^ icons at: aData ifAbsent: [ | aux |
		aux := RTElement new.
		color := aData shouldConnect
			ifTrue: [ aData lineShape color rtValue: aux]
			ifFalse: [ Color white ].
		RTEllipse new size: 10; color: color.
		 ]