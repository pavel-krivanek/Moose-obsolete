*metanool-core
magritteDescriptionName
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		default: 'noname';
		label: 'Name';
		priority: 100;
		beRequired;
		yourself