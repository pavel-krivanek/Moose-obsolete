statements
createIndex
	^ super createIndex
		==> [ :token | 
			| indexNode |
			indexNode := SQLCreateIndexNode new.
			token second ifNotNil: [ indexNode isUnique: true ].
			indexNode indexName: ((token at: 5) substrings: '.') second.
			indexNode referenceTable: (token at: 7).
			indexNode indexedColumnNames: ((token at: 8) second reject: [ :each | each = $, ]).
			indexNode ]