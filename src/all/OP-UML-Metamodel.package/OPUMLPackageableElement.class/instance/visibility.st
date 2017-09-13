accessing
visibility
	"A PackageableElement must have a visibility specified if it is owned by a Namespace. The default visibility is public."
	^ visibility ifNil: [ visibility := OPUMLVisibilityKind new public ]