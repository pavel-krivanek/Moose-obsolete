enumerating
queryKeysDo: aBlock
	| enumeratedKeys |

	enumeratedKeys := Set new: self rawQuery size.
	self rawQuery do: [:each | | decodedKey oldSize |
		decodedKey := self percentAndPlusDecode: each key.
		"checking the size after is faster than an #includes: test before"
		oldSize := enumeratedKeys size.
		(enumeratedKeys
			add: decodedKey;
			size) > oldSize
			ifTrue: [aBlock value: decodedKey]].