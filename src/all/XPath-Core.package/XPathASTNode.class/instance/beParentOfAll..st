private
beParentOfAll: aNodeCollection
	aNodeCollection do: [:each | self beParentOf: each].
	^ aNodeCollection.