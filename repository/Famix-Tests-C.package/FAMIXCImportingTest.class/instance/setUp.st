running
setUp
	super setUp.

	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(		
		(FAMIX.Class (id: 1) (name ''AClass'') (sourceAnchor (ref: 3)) (container (ref: 5)))
		(FAMIX.Method (id: 2) (name ''aMethod'') (parentType (ref: 1)) (sourceAnchor (ref: 4)))
		(FAMIX.FileAnchor (id: 3) (element (ref: 1)) (fileName ''afile''))
		(FAMIX.FileAnchor (id: 4) (element (ref: 2)) (fileName ''afile'') (startLine 3) (endLine 30) )
		(FAMIX.Module (id: 5)
			(compilationUnit (ref: 6))
		)
		(FAMIX.CompilationUnit (id: 6) 
			(name ''foobar.cpp'')
		)
		
		(FAMIX.Include (id: 7)
			(source (ref: 6))
			(target (ref: 8)))

		(FAMIX.Include (id: 10)
			(source (ref: 6))
			(target (ref: 9)))
			
		(FAMIX.Header (id: 8)
			(name ''foobar.hpp'')
			)
			
		(FAMIX.Header (id: 9)
			(name ''foobar2.hpp'')
			)
	)' readStream.

	