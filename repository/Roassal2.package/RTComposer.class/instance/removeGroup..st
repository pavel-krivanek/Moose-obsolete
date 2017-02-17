public-layout
removeGroup: groupId
	| elements |
	
	elements := self getGroup: groupId.
	view removeElements: elements.
	
	"remove the mapping from the dictionary"
	mapping removeKey: groupId.
	
	"regenerate the groups array"
	groups removeAll.
	mapping do: [ :groupElements | groups add: groupElements. ].
