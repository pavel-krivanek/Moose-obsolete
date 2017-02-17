statements
columnDef
	^ super columnDef
		==> [ :token | 
			| colNode |
			colNode := SQLColumnDefNode new.
			colNode name: token second.
			token third ifNotNil: [ colNode type: token third first ].
			colNode constraints: (token at: 4).
			colNode ]