scoping
primCollectAtScope: aScopeSymbol
	"
	^ self opposites collectAtScope: aScopeSymbol
	"

	^ (storage flatCollect: [ :invo | invo to]) "flatten lists of candidates first"
			collect: [ :mth | mth perform: aScopeSymbol ]