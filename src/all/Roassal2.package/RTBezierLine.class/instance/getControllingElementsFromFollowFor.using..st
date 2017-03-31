control points
getControllingElementsFromFollowFor: anEdge using: followBlock
	| start end lca elements block k clean |
	start := anEdge from.
	end := anEdge to.
	lca := self leastCommonAncestor: anEdge using: followBlock.
	elements := OrderedCollection new.
	clean := [ elements ifNotEmpty: [ elements removeFirst ].
		elements ifNotEmpty: [ elements removeLast ]. ].
	lca ifNil: [ 
		elements := (self getFollowersOf: start using: followBlock), 
			(self getFollowersOf: end using: followBlock) reverse allButFirst.
		clean value.
		^ elements.
		 ].
	
	elements add: start.
	block := [ :m | start view elementFromModel: (followBlock rtValue: m)  ].
	
	[ start == lca ] whileFalse: [ 
		start := block value: start model.
		elements add: start.
	 ].
	k := elements size.
	[ end == lca ] whileFalse: [ 
		elements add: end afterIndex: k.
		end := block value: end model.
	 ].
	clean value.
	^ elements.
	