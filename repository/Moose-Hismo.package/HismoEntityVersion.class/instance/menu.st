public interface
menu
	
	| menu |
	menu := super menu.
	menu addItemLabel: self versionEntity mooseDescription name.
	menu menuItems last submenu: self versionEntity menu.
	^menu