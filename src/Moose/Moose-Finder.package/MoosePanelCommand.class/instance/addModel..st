actions
addModel: aMooseModel
	"Note that MoosePanel has its list refreshed"
	moosePanel ifNotNil: [moosePanel addModel: aMooseModel]