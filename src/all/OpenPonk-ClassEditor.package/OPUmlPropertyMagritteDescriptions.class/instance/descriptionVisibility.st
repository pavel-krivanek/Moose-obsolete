descriptions
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
		accessor: (self descriptionAccessor: #visibility);
		label: 'Visibility';
		priority: 8;
		beSorted;
		yourself