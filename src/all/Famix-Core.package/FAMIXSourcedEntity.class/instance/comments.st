accessing
comments
	"VBU - Put in private state because it is not used and so take place in the memory"

	<MSEProperty: #comments type: #FAMIXComment opposite: #container>
	<multivalued>
	<derived>
	<MSEComment: 'list of comments defined in the entity'>
	^ self privateState
		attributeAt: #comments
		ifAbsentPut: [ FMMultivalueLink on: self opposite: #container: ]