initialization
initialize
	super initialize.
	linear := RTScaleLinear new domain: #(0 1).
	base := 10.
	positive := true.
	domain := #(1 10). 