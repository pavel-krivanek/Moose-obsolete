toolbar
exportPackage: aPackage
	FDSaveFileDialog new
		whenSelected: [ :file | 
			file
				ensureDelete;
				writeStreamDo: [ :stream | stream << (OPUMLXMIWriter toString: aPackage) ].
			self inform: 'Exported to ' , file fullName ];
		extensionFilters:
			{'XMI files' -> #(xmi xml uml).
			'All files' -> #()};
		defaultFolder: FileLocator imageDirectory asFileReference;
		open