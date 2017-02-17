*Famix-Extensions
allChildScopesDo: aBlock
	self childScopes do: [:each |
		each withAllChildScopesDo: aBlock ]