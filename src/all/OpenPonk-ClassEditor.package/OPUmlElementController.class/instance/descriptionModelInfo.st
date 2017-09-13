forms
descriptionModelInfo
	<magritteDescription>
	^ MAStringDescription new
		beReadonly;
		accessor: (MAPluggableAccessor read: [ :me | '' ] write: [ :me :newValue |  ]);
		label: self model className;
		priority: 0;
		yourself