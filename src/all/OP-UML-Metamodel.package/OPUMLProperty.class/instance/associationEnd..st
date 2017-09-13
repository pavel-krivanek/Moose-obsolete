accessing
associationEnd: aProperty
	"Designates the optional association end that owns a qualifier attribute."
	associationEnd := OPUMLToOneLink
		on: self identity
		update: #qualifiers
		from: associationEnd
		to: aProperty