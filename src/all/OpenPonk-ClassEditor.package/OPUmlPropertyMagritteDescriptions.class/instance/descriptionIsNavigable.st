descriptions
descriptionIsNavigable
	<magritteDescription>
	^ MABooleanDescription new
		accessor:
			(MAPluggableAccessor
				read: [ :me | (reader value: me) isNavigable ]
				write: [ :me :newValue | 
					me writeNavigability: newValue to: (reader value: me).
					me refreshFigure ]);
		label: 'Is Navigable';
		priority: 10;
		yourself