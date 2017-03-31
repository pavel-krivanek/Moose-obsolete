private
findTextConverterClassForEncoding: anEncoding
	^ (XMLClassFinder
		classNamed: #TextConverter
		ifAbsent: [^ nil])
			defaultConverterClassForEncoding: anEncoding asLowercase