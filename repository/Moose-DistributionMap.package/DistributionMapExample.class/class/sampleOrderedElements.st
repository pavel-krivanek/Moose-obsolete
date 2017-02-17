example
sampleOrderedElements

	^ [:class ||dic orderedMethods|
			orderedMethods := OrderedCollection new.
			dic := Dictionary new.
			self sampleProperties do: [:prop | dic at: prop put: OrderedCollection new].
			class methods do: [ :mth|
				(dic at: (self sampleBlock value: mth)) add: mth
				].
			self sampleProperties do: [:prop |
				orderedMethods addAll: (dic at: prop)
				].
			orderedMethods
		]