instance creation
fm3
	| builder repo |
	"Again, no singeltons please!"
	builder := FMPragmaProcessor new.
	builder buildFM3.
	repo := self basicNew.
	repo initialize: repo.
	repo addAll: builder elements.
	^ repo