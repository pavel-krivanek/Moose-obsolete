accessing
currentScope
	| totalScopes |

	(totalScopes := scopes size) > 0
		ifTrue: [^ scopes at: totalScopes]
		ifFalse: [^ self newEmptyScope]