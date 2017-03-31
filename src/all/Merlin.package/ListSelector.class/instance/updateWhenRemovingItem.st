actions
updateWhenRemovingItem
	"we remove the selected item from the selection list : "
	| list package tmpPackagesList |
	package := self selectionListSelectedItem.
	list := self selectionList.
	list remove: package.
	self selectionList: list.
	"if the selection become empty, we disable the remove button :"
	list isEmpty ifTrue: [removeButton disable]. 

	"we move the removed package into the packages list :"
	tmpPackagesList := self list.
	tmpPackagesList add: package.
	self list: tmpPackagesList.
