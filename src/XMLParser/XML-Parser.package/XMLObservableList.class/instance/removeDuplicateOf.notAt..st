private
removeDuplicateOf: anObject notAt: anIndex
	"Removes a duplicate of anObject at any index besides anIndex and
	returns the removed duplicate or nil if there isn't one."

	| duplicateIndex |

	(duplicateIndex := 
		self
			duplicateIndexOf: anObject
			notAt: anIndex) > 0
		ifTrue: [| duplicate |
			(duplicate := collection removeAt: duplicateIndex) = anObject
				ifFalse: [
					"subclasses may implement #duplicateIndexOf:notAt: to test
					for duplicates not with #=, so 'duplicate' can be a
					distinct object from 'anObject' that's been removed"
					self afterRemoving: duplicate].
			^ duplicate]
		ifFalse: [^ nil]