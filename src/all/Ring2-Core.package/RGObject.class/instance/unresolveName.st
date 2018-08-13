accessing
unresolveName

	| oldName result |
	
	oldName := name.
	result := self unresolvedValue: self unresolvedName.
	self pvtName: result.
	self parent child: self renamedFrom: oldName to: result value.
	^ result