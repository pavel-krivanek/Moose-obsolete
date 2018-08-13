*Ring2-Monticello
classPool

	"TODO"
	^ Dictionary newFrom: (self classVarNames collect: [ :each | each -> nil ])