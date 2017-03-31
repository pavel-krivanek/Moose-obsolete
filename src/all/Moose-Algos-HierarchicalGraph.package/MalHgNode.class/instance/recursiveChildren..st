enumerating
recursiveChildren: withMyself
	"Returns the whole family tree below myself. 
	If withMyself is true, also add myself to the returning collection."
	| result |
	result := Set new.
	
	withMyself ifTrue: [
		result add: self.
	].
	
	self isLeafNode ifTrue: [
		^ result.	
	].

	result addAll: children.
	
	children do: [ :each | 
		result addAll: (each recursiveChildren: true). 
	].

	^ result.