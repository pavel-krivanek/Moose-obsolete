running
setUp
	super setUp.

	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
	(FAMIX.Package (id: 0)
		(name ''Siconos''))
	(FAMIX.CompilationUnit (id: 1)
		(filepath ''example.cpp'')
		(name ''example.cpp'')
		(language ''C++''))
	(FAMIX.Header (id: 2)
		(filepath ''example.hpp'')
		(name ''example.hpp'')
		(language ''C++''))
	(FAMIX.Include (id: 3)
		(source (ref: 1))
		(target (ref: 2)))
	(FAMIX.FileAnchor (id: 5)
		(element (ref: 4))
		(unit (ref: 2))
		(fileName ''example.hpp''))
	(FAMIX.Method (id: 6)
		(name ''TestFunction'')
		(signature ''void TestFunction()'')
		(parentType (ref: 4)))
	(FAMIX.Class (id: 4)
		(name ''MyClass'')
		(container (ref: 0))
		(sourceAnchor (ref: 5)))
)
' readStream.

	