creation
basicCreate: baseEntities
	| hiGraph |
	hiGraph := self new.
	"TODO: refactor this"
	((baseEntities isKindOf: Collection) and: ((baseEntities isKindOf: String) not))
		ifTrue: [ hiGraph nodes: baseEntities. ]
		ifFalse: [ hiGraph node: baseEntities ].
	^ hiGraph.