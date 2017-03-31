as yet unclassified
is: collection1 equal: collection2 
	collection1 with: collection2 do: [:e1 :e2 | e1 = e2 ifFalse: [^false]].
	^true