initialize-release
on: lattice
	
	| identifier |
	identifier := ModuleIdentification new.
	identifier lattice: lattice.
	^ identifier computeModules.