tests
testviewOverviewPyramid
	| windows |
	windows := self getAllWindows.
	[self model viewOverviewPyramid] 
		ensure: [ (self getAllWindows copyWithoutAll: windows) do: #delete   ].
	