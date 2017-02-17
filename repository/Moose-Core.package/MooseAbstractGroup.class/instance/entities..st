entity collection
entities: aCollection 
	 
	self entityStorage removeAll. 
	self addAll: aCollection	"	aCollection do: [:each | self addEntity: each ]."