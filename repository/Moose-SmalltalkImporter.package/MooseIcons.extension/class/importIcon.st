*moose-smalltalkimporter
importIcon
	"self importIcon"
	| wantedIcons |
	MooseIcons resetIcons.
	wantedIcons := #('mooseIcon').
	MooseScripts 
		importIcons: wantedIcons
		fromFolder: 'icons'
		inClass: MooseIcons
		category: 'logo'