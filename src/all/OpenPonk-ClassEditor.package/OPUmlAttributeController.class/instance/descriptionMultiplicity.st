forms
descriptionMultiplicity
	<magritteDescription>
	^ MASingleOptionDescription new
		beExtensible;
		options: #('0..1' '1..1' '0..*' '1..*');
		reference: MAStringDescription new;
		accessor:
			(MAPluggableAccessor
				read: [ :me | me model lowerBound asString , '..' , me model upperBound asString ]
				write: [ :me :newValue | 
					self writeMultiplicityFrom: newValue to: me model.
					self refreshFigure ]);
		label: 'Multiplicity';
		priority: 9;
		beSorted;
		yourself