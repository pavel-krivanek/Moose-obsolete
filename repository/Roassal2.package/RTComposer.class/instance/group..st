public-layout
group: aName
	"Define a new group with the elements added to the view"
	| group |
	group := self newElementsAsGroup.
	groups add: group.
	mapping at: aName put: group.