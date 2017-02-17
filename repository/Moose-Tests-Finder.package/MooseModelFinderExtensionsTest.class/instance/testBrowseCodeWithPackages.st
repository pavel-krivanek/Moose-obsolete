tests
testBrowseCodeWithPackages
	| windows |
	windows := self getAllWindows.
	[self model browseCodeWithPackages] 
		ensure: [ (self getAllWindows copyWithoutAll: windows) do: #delete   ].
	