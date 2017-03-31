*Moose-Finder
rename
	<menuItem: 'Rename' category: 'Utilities'>

	| newName |
	newName := UITheme builder
		textEntry: 'Set new name for MooseModel ', self name.
	(newName notNil and: [newName notEmpty])
		ifTrue: [ self name: newName ]
