actions
remove
	| sel |
	(sel := self nodeList selection) ifNotNil: [ self nodeList list remove: sel ]