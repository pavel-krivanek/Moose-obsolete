initialize
addLastVersionForMooseModel: aMooseModel 
	| version |

	version := HismoEntityVersion 
		with: aMooseModel
		inHistory: self.
	version referenceVersion: version.
	self addLast: version