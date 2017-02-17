tests
testRunWithProfiler

	| task windows |
	task := (MooseCustomTask new) with: [ :v | true ] description: 'a description' length: 0.
	windows := self getAllWindows.
	task runWithProfiler.
	(self getAllWindows copyWithoutAll: windows ) do: #delete
