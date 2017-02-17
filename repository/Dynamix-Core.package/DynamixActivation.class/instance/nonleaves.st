accessing-derived
nonleaves
	"returns an ordered Collection of all the non leaf nodes of a tree"
	| stream |
	stream := Array new writeStream.
	self allNonleavesDo: [ :each | stream nextPut: each ].
	^stream contents