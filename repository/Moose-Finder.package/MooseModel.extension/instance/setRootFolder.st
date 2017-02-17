*Moose-Finder
setRootFolder
	<menuItem: 'Set root folder' category: 'Utilities'>

	| folder |
	folder := UITheme builder chooseDirectory: 'Choose the root folder for the sources of ', self name.
	folder ifNotNil: [ self rootFolder: folder fullName ]