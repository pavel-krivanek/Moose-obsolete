forms
descriptionIsDisjoint
	<magritteDescription>
	^ MABooleanDescription new
		accessor: (self descriptionAccessor: #isDisjoint);
		label: 'Is Disjoint';
		priority: 11;
		yourself