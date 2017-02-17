compiling
compileClass: fameClass superclass: rbSuperclass 
	^ model defineClass: ('<1s> subclass: #<2s>
		instanceVariableNames: ''''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: #<3p>' 
			expandMacrosWith: rbSuperclass name
			with: (self classNameFor: fameClass)
			with: (self categoryNameFor: fameClass))