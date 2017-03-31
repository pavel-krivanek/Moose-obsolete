tests
testModule2
	| data fca context lattice modules |
	data := #(#(#a #()) #(#b #(1)) #(#c #(1 2)) #(#(#d) #(1 3)) #(#(#e) #(1 2 3)) #(#(#f) #(1 2 3 4))).
	fca := MalFormalContext new.
	context := fca with: data using: #first using: #last.
	lattice := MalLattice on: context.	"(MalLattice new viewLattice: lattice)."
	modules := ModuleIdentification on: lattice.
	self assert: modules size equals: 1.
	self assert: modules first size equals: 4