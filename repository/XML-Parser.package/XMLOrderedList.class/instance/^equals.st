comparing
= anObject
	"Returns true if anObject is any kind of XMLOrderedList (not just the
	class of the receiver) and it and the receiver have the same items
	in the same order."

	self == anObject
		ifTrue: [^ true].

	(self species == anObject species
		and: [collection size = anObject size])
		ifFalse: [^ false].

	"Test each position with #= using #to:do: for speed instead of
	just 'collection = anObject collection' because that would
	make equality depend on the internal collections instead of
	just their items."
	1 to: collection size do: [:i |
		(collection at: i) = (anObject at: i)
			ifFalse: [^ false]].
	^ true.