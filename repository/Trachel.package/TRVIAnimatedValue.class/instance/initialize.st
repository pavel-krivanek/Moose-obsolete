initialization
initialize
	super initialize.
	timer := TRVITimer new.
	evaluator := [ :time | time ]