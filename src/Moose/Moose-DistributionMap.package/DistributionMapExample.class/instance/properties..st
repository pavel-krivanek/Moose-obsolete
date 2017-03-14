accessing
properties: aCollectionOfProperties

	| map |
	map := self propertiesMap.
	1 to:aCollectionOfProperties size do: [ :i |
		map add: ((aCollectionOfProperties at: i) -> (self colorAtIndex: i + 1))
		].
	^ map