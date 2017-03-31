tests
testBrowseMeta
	| windows |
	windows := self getAllWindows.
	[MooseModel browseMeta] 
		ensure: [ (self getAllWindows copyWithoutAll: windows) do: #delete   ].
	