accessing
merge: aClass with: traits

	| info |
	
	info := self manage: aClass.
	info clean.
	traits do: [ :each | info addTrait: each ].
	info merge.