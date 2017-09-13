descriptions
descriptionType
	<magritteDescription>
	^ MAStringDescription new
		beReadonly;
		accessor:
			(MAPluggableAccessor
				read: [ :me | (reader value: me) type name ]
				write: [ :me :newValue |  ]);
		label: labelPrefix;
		priority: 1;
		yourself