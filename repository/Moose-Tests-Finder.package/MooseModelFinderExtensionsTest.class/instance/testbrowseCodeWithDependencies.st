tests
testbrowseCodeWithDependencies
	| windows |
	windows := self getAllWindows.
	[self model browseCodeWithDependencies] 
		ensure: [ (self getAllWindows copyWithoutAll: windows) do: #delete   ].
	