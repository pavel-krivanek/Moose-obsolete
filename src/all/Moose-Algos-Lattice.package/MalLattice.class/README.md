MalLattice on: MalFormalContext mammals2.

MalLattice new viewLattice: (MalLattice on: MalFormalContext mammals2)


| data fca context lattice |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#smart #fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #smart #thumbed)) #(#Man #(#smart #thumbed)) #(#Whale #(#smart #marine))).
	fca := MalFormalContext new.
	context := fca with: data using: #first using: #last.
	MalLatticePatterns on: (MalLattice new viewLattice: (MalLattice on: context)) 