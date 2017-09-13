accessing
importingNamespace: aNamespace
	"Specifies the Namespace that imports the members from a Package."
	importingNamespace := OPUMLToOneLink
		on: self identity
		update: #packageImports
		from: importingNamespace
		to: aNamespace