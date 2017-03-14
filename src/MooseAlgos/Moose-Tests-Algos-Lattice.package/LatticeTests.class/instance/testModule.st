tests
testModule
	| data fca context lattice modules |
	data := #(#(#a #()) #(#b #(1)) #(#c #(1 2)) #(#(#d) #(1 3)) #(#x #(1 5)) #(#(#e) #(1 2 3 5)) #(#(#f) #(1 2 3 4 5))).
	fca := MalFormalContext new.
	context := fca with: data using: #first using: #last.
	lattice := MalLattice on: context.
	modules := ModuleIdentification on: lattice.
	self assert: modules size equals: 1.
	self assert: modules first size equals: 5