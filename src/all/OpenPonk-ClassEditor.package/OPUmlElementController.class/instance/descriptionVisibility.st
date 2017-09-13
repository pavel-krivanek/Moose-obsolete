forms
descriptionVisibility
	<magritteDescription>
	^ MASingleOptionDescription new
		optionsAndLabels:
			{nil -> ''.
			OPUMLVisibilityKind public -> 'public'.
			OPUMLVisibilityKind protected -> 'protected'.
			OPUMLVisibilityKind private -> 'private'.
			OPUMLVisibilityKind new package -> 'package'};
		reference: MAStringDescription new;
		accessor:
			(MAPluggableAccessor
				read: [ :me | me model visibility ]
				write: [ :me :newValue | 
					me model visibility: newValue.
					self refreshFigure ]);
		label: 'Visibility';
		priority: 8;
		beSorted;
		yourself