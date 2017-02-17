public
importFileNamed: name 
	"This is a public method. It loads a particular package into the moose model"

	| version definitions visitor progressBar step |
	self setMooseModel.
	
	[ version := self repository versionFromFileNamed: name. ]
		on: Error 
		do: [:ex | self inform: 'Package ', name, ' not accessible from the file system?'. ^ self targetModel].
		
	definitions := version snapshot definitions.
	
	
	MooseCustomTask runWithProgress: [:bar |
		visitor := MooseMonticelloClassPopulator new importer: self.
		definitions do: [ :def | def accept: visitor.
			bar increment].
	] description: 'Importing classes' length: (definitions size).

	self setSuperclassesAndCreateStubs.

	"create a scope, this is necessary for the method visitor which is VW aware"
	self targetModel allClasses do: [:famixClass | 
		famixClass attributes do: [:famixAttribute | 
			(self scopeOfClass: famixClass) at: famixAttribute name bind: famixAttribute]].


	MooseCustomTask runWithProgress: [:bar |
		"import methods"
		definitions do: [ :def | 
			(def isKindOf: MCMethodDefinition)
			ifTrue: [
				visitor := MooseMonticelloMethodPopulator new importer: self.
				def accept: visitor.
				self targetModel addAll: visitor entities]].
			bar increment.
		] description: 'Importing methods' length: (definitions size).


	^ self targetModel