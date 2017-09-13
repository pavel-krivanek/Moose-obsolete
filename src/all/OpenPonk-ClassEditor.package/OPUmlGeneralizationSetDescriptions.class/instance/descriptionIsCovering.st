forms
descriptionIsCovering
	<magritteDescription>
	^ MABooleanDescription new
		accessor: (self descriptionAccessor: #isCovering);
		label: 'Is Covering';
		priority: 10;
		yourself