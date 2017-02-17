running
tearDown
	super tearDown.
"	World doOneCycle."
"	(self getAllWindows copyWithoutAll: systemWindows) do: #delete."