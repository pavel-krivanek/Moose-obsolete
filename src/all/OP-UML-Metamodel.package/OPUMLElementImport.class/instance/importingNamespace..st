accessing
importingNamespace: aNamespace
	"Specifies the Namespace that imports a PackageableElement from another Namespace."
	importingNamespace := OPUMLToOneLink
		on: self identity
		update: #elementImports
		from: importingNamespace
		to: aNamespace