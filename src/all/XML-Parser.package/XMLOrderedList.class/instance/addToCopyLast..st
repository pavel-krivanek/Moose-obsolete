private
addToCopyLast: anObject
	"this is used to efficiently append to copies for methods like #copy,
	#copyWithout:, #select:, and #reject: that create copies with no new elements
	(only old ones) so duplicate or other constraint checking can be skipped
	by subclasses"

	^ collection addLast: anObject