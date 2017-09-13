accessing
elementImports: anElementImport
	"References the ElementImports owned by the Namespace."
	self elementImports
		removeAll;
		addAll: anElementImport