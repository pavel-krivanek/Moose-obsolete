*DeepTraverser
deepCollectAsSet: aBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	returns a Set containing each traversed object.
	
	For example:
	Number deepCollectAsSet: #subclasses"

	"When the desired result is a set, we take advantage of the 
	fact that the traversed objects are kept in a set inside the traverser
	and we simply return that set"
	
	^ self deepCollect: aBlock as: Set