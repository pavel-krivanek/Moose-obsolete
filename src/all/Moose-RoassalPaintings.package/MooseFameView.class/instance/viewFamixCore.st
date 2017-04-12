opening
viewFamixCore
	" This method displays Famix core classes i.e., Famix classes declared in FAMIX package."
	^ self viewFameClasses: (
		MooseModel metaTower metamodel classes select: [ :fameClass | fameClass package notNil and: [fameClass package name = #FAMIX ]])