loading scripts
pharoPackageNames
	"self pharoPackageNames"
	
	| packages packageNames |
	packages := (RPackage organizer packages select:[:each | each class = RPackage])
									  asSortedCollection: [:a :b | a name <= b name].
	packageNames := packages collect: [:pak | pak name].
	^ packageNames