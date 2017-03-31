as yet unclassified
recursiveChildren: withMyself
	"Returns the whole family tree below myself. 
	If withMyself is true, also add myself to the returning set."
	| result |
	result := Set new.
	
	withMyself ifTrue: [
		result add: self.
	].
	
	self isLeaf ifTrue: [
		^ result.	
	].

	result addAll: children.
	
	children do: [ :each | 
		result addAll: (each recursiveChildren: true). 
	].

	^ result.