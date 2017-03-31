internal
resolveIds: idDict
	self resolveMyIds: idDict.
	children do: [ :each | each resolveIds: idDict ]