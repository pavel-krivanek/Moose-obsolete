private
findTextConverterClassForEncoding: anEncoding
	"#defaultConverterClassForEncoding: expects the name to be in lowercase"
	^ (XMLClassFinder
		classNamed: #TextConverter
		ifAbsent: [^ nil])
			defaultConverterClassForEncoding: anEncoding asLowercase