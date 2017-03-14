accessing
problems
	" some problems are static -> #problems / other problems are dynamic (and changing) and not stored in #problems -> arguments+examples "
	^ (problems , self invalidArguments) asArray