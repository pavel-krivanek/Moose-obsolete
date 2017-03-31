scoping
primCollectAtScope: aScopeSymbol

	^ ( storage primCollectAtScope: aScopeSymbol )
			addAll: ( invocationStorage primCollectAtScope: aScopeSymbol );
			yourself