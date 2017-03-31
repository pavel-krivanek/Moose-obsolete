building
browserActions
	browser
		populate: #entity
		icon: MooseIcons mooseAdd 
		entitled: 'Open'
		with: [ 
			| directory |
			directory := UITheme builder chooseDirectory: 'Import file structure from folder'.
			DiskStore currentFileSystem / directory fullName ]