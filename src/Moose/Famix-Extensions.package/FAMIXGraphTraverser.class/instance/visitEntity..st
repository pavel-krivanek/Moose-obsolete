visiting
visitEntity: anEntity
	| targetEntities |
	(self hasAlreadyVisited: anEntity)
		ifTrue: [ ^ self ].
	graph nodes: {anEntity}.
	visited add: anEntity.
	targetEntities := self traverse: anEntity.
	targetEntities do: [ :each | each ifNotNil: [ each accept: self ] ].
	graph edges: targetEntities from: [ :x | anEntity ] to: [ :x | x ]