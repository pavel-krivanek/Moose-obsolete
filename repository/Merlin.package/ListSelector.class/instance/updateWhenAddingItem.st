actions
updateWhenAddingItem
	| tmpPackagesList package initialPackages |
	package := self listSelectedItem asString.
	tmpPackagesList := OrderedCollection withAll: self selectionList.
	tmpPackagesList add: package.

	" we remove the selected package from the initial list :"
	initialPackages := self list.
	initialPackages remove: package.
	self list: initialPackages.
	"if the initial become empty, we disable de add button"
	initialPackages isEmpty ifTrue: [addButton disable].	

	" we update the list of packages of the selection morph list :"
	"listModel packagesList: list."
	self selectionList: tmpPackagesList.
