scoping
primCollectAtScope: aScopeSymbol

	^ storage collect: [ :obj | obj perform: aScopeSymbol ]