initialize
defineEntityDependencies
	"self initialize"
	"when we extract literals extract  methods"
	
	self entityDependencies
		at: self importingLiteral
		put:
			((Set new)
				add: self importingLiteral;
				add: self importingMethod;
				yourself).	"when we extract comments do not extract anything else per default "
	self entityDependencies
		at: self importingComment
		put:
			((Set new)
				add: self importingComment;
				add: self importingMethod;
				yourself).	"when we extract files do not extract anything else per default "
	self entityDependencies
		at: self importingFolder
		put:
			((Set new)
				add: self importingFolder;
				yourself).	"when we extract files do not extract anything else per default "
	self entityDependencies
		at: self importingFile
		put:
			((Set new)
				add: self importingFile;
				yourself).	"when we extract namespace do not extract anything else per default "
	self entityDependencies
		at: self importingNamespace
		put:
			((Set new)
				add: self importingNamespace;
				yourself).	"when we extract package do not extract anything else per default "
	self entityDependencies
		at: self importingPackage
		put:
			((Set new)
				add: self importingPackage;
				yourself).
	self entityDependencies
		at: self importingClass
		put:
			((Set new)
				add: self importingClass;
				add: self importingNamespace;
				yourself).	"when we extract inheritance we extract classes"
	self entityDependencies
		at: self importingInheritance
		put:
			((Set new)
				add: self importingClass;
				add: self importingInheritance;
				yourself).	"when we extract inheritance we extract classes"
	self entityDependencies
		at: self importingMethod
		put:
			((Set new)
				add: self importingMethod;
				add: self importingClass;
				yourself).
	self entityDependencies
		at: self importingClassExtension 
		put:
			((Set new)
				add: self importingClassExtension;
				add: self importingMethod;
				add: self importingPackage;
				yourself).
	"when we extract implicit variable we extract also method"
	self entityDependencies
		at: self importingImplicitVariable
		put:
			((Set new)
				add: self importingMethod;
				add: self importingImplicitVariable;
				yourself).	"when we extract local variable we extract also method"
	self entityDependencies
		at: self importingLocalVariable
		put:
			((Set new)
				add: self importingMethod;
				add: self importingLocalVariable;
				yourself).
	self entityDependencies
		at: self importingAttribute
		put:
			((Set new)
				add: self importingAttribute;
				add: self importingClass;
				yourself).
	self entityDependencies
		at: self importingInvocation
		put:
			((Set new)
				add: self importingInvocation;
				add: self importingMethod;
				yourself).
	self entityDependencies
		at: self importingFormalParameter
		put:
			((Set new)
				add: self importingMethod;
				add: self importingFormalParameter;
				yourself).
	self entityDependencies
		at: self importingArgument
		put:
			((Set new)
				add: self importingMethod;
				add: self importingArgument;
				yourself).
	self entityDependencies
		at: self importingGlobalVariable
		put:
			((Set new)
				add: self importingArgument;
				add: self importingArgument;
				yourself).
	self entityDependencies
		at: self importingAccess
		put:
			((Set new)
				add: self importingMethod;
				add: self importingImplicitVariable;
				add: self importingLocalVariable;
				add: self importingAccess;
				add: self importingGlobalVariable;
				add: self importingArgument;
				add: self importingFormalParameter;
				yourself)