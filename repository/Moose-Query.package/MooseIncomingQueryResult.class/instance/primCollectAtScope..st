scoping
primCollectAtScope: aScopeSymbol
	"
	^ self opposites collectAtScope: aScopeSymbol
	"

	^ self storage collect: [ :dep | (self opposite: dep) perform: aScopeSymbol ]