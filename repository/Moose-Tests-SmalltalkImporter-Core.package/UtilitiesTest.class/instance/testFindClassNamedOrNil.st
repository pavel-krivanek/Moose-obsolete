tests
testFindClassNamedOrNil
	"(self selector: #testFindClassNamedOrNil) run"

	self assert: (FAMIXNameResolver findClassNamedOrNilFromFullName: Model name) equals: Model.	"self
		assert:
			(MSEUtilities
				findClassNamedOrNilFromFullName: Model fullName asSymbol) =
					Model."
	self
		assert:
			(FAMIXNameResolver findClassNamedOrNilFromFullName: (FAMIXNameResolver name , FAMIXNameResolver metaclassTag) asSymbol)
				isNil