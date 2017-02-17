running
settingUpTestPackageIfNecessary

	(MooseMonticelloCacheImporter new fileNames includes: self packageToTest)
		ifFalse: [ 
			| cls1 cls2 workingCopy |
			cls1 := Object subclass: #Class1ForMonticelloCacheImporter
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: self packageToTest.
			cls1 compile: 'foo', String cr, '	"hello"', String cr, '	^ 10'.
			cls1 compile: 'bar', String cr, '	"hello"', String cr, '	^ 10'.
					
			cls2 := Object subclass: #Class2ForMonticelloCacheImporter
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: self packageToTest.
			cls2 compile: 'foo', String cr, '	Class1ForMonticelloCacheImporter new foo'.

			workingCopy := MCWorkingCopy forPackage: (MCPackage new name: self packageToTest).
			workingCopy newVersionWithName: self packageToTest, '-FooBar-1' message: 'test' in: workingCopy repositoryGroup.
			cls1 removeFromSystem.
			cls2 removeFromSystem.

		]