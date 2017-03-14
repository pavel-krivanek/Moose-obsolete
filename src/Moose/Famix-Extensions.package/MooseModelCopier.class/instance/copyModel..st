running
copyModel: aMooseModel
	"
	self new copyModel: MooseModel root second 
	"
	
		"run the visitor on namespace then packages, visit entities hierarchially, make sure
	before visiting an entity that it has not been visited before"

	model := MooseModel new.
	model name: aMooseModel name copy.
	model sourceLanguage: aMooseModel sourceLanguage copy.
	aMooseModel allPackages do: [:p|
		self visit: p ].
	aMooseModel allNamespaces do: [:n|
		self visit: n	].
	^ model