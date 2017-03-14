instance creation
with: aBinding withAll: aCollectionOfBindings
	| col |
	col := OrderedCollection with: aBinding.
	col addAll: aCollectionOfBindings.
	^ self withAll: col