The class serves the purpose of module identification. To see the definition of a module, see the following paper:
M. Habib, M. Huchard and J. Spinrad. A linear algorithm to decompose inheritance graphs into modules. Algorithmica, 13:573-591, Springer-Verlag, 1995.

The algorithm implemented by the class has been tested on simple and complex lattices (see tests) and it works. The algo has a start phase, a middle phase, and an en phase.
-> In the start phase, the algorithm is started on each node.
-> In the middle phase, it is seen if the descendants of the top node make up candidates to be included in the module.
-> In the end phase, it is seen that the descendants of the top node are converging to a bottom node.
If the three phases succeed, the module pattern is detected.
The class has some associated tests.

Instance Variables:
	moduleNodes	<Collection>
	lattice	<MalLattice>
	aCandidate	<Collection>
	nodesToConsider	<(Collection of: MalLatticeNode)>
		
To test module pattern run the following code in the workspace.

| data fca context lattice |
	data := #(#(#a #()) #(#b #(#1)) #(#c #(#1 #2)) #(#d #(#1 # 2 #3)) #(#e #(#1 #2 #4)) #(#f #(#1 #2 #3 #4)) #(#g #(#1 #2 #4 #5)) #(#h #(#1 #2 #4 #6)) #(#i #(#1 #2 #3 #4 #5 #6)) #(#j #(#1 #8)) #(#k #(#1 #9)) #(#l #(#1 #8 #9))).
	fca := MalFormalContext new.
	context := fca with: data using: #first using: #last.
	lattice := (MalLattice on: context).
	"(MalLattice new viewLattice: lattice)."
	(MalLatticePatterns on: lattice) reportPatterns.
	