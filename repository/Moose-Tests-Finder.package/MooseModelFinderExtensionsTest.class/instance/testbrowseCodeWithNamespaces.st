tests
testbrowseCodeWithNamespaces
	| windows |
	windows := self getAllWindows.
	[MooseModel new browseCodeWithNamespaces] 
		ensure: [ (self getAllWindows copyWithoutAll: windows) do: #delete   ].
	