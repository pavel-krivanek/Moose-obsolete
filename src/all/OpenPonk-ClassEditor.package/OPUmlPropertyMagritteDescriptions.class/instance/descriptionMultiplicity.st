descriptions
descriptionMultiplicity
	<magritteDescription>
	^ MASingleOptionDescription new
		beExtensible;
		options: #('0..1' '1..1' '0..*' '1..*');
		reference: MAStringDescription new;
		accessor:
			(MAPluggableAccessor
				read:
					[ :me | (reader value: me) lowerBound asString , '..' , (reader value: me) upperBound asString ]
				write: [ :me :newValue | 
					me writeMultiplicityFrom: newValue to: (reader value: me).
					me refreshFigure ]);
		label: 'Multiplicity';
		priority: 9;
		beSorted;
		yourself