toolbar
importToPackage: aPackage
	| pathmap model |
	FDOpenFileDialog new
		whenSelected: [ :file | 
			pathmap := OPUMLXMIPathmap new.
			pathmap add: 'http://www.omg.org/spec/UML/20131001/PrimitiveTypes.xmi'.
			pathmap add: 'http://www.omg.org/spec/UML/20131001/UML.xmi'.
			model := OPUMLXMIReader read: file contents pathmap: pathmap.
			self inform: 'Imported from ' , file fullName ];
		extensionFilters:
			{'XMI files' -> #(xmi xml uml).
			'All files' -> #()};
		defaultFolder: FileLocator imageDirectory asFileReference;
		open