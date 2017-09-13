forms
descriptionVisibility
	<magritteDescription>
	^ MASingleOptionDescription new
		optionsAndLabels:
			{OPUMLVisibilityKind public -> 'public'.
			OPUMLVisibilityKind protected -> 'protected'.
			OPUMLVisibilityKind private -> 'private'.
			OPUMLVisibilityKind new package -> 'package'};
		morphClass: MADropListMorph;
		reference: MAStringDescription new;
		accessor: (self descriptionAccessor: #visibility);
		label: 'Visibility';
		priority: 4;
		beSorted;
		yourself