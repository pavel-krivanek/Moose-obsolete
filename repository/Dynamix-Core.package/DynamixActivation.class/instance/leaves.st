accessing-derived
leaves
	"returns an ordered Collection of all the leaf nodes of a tree"
	| stream |
	stream := Array new writeStream.
	self allLeavesDo: [ :each | stream nextPut: each ].
	^stream contents