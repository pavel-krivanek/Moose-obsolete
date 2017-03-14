The class implements the identification of patterns in FCA lattices. We can detect like horizontal decomposition with the algos in the class.

| data fca context lattice |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#smart #fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #smart #thumbed)) #(#Man #(#smart #thumbed)) #(#Whale #(#smart #marine))).
	fca := MalFormalContext new.
	context := fca with: data using: #first using: #last.
	(MalLatticePatterns on: (MalLattice on: context)) reportPatterns

For moose models
	
|fca model treillis context|
model := (MooseModel root allModels) second.
fca := MalFormalContext new.
context := fca with: (model allModelClasses) using: #yourself using: [:cl | cl methods collect: [:m | m name]].
treillis := (MalLattice on: context).
Transcript clear.
(MalLatticePatterns on: treillis) reportPatterns.
(MalLattice new viewLattice: treillis).


Smalltalk collection class hierarchy:

|fca model treillis context|
treillis := (MalLattice on: MalFormalContext classHierarchyCollection).
(MalLatticePatterns on: treillis) reportModules.