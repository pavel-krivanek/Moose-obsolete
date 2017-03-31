*DeepTraverser
withDeepCollect: aTraversalBlock
	"traverses all objects starting with and including the receiver using aTraversalBlock, and
	returns an OrderedCollection containing each traversed object.
	
	For example:
	Number withDeepCollect: #subclasses"

	| result |
	result := OrderedCollection new.
	self withDeep: aTraversalBlock do: [ :each | result add: each ].
	^ result