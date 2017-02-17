running
metamodel

	| importer builder |
	importer := FMImporter new.
	importer repository: (FMMetaRepository with: FMMetaRepository fm3).
	builder := FMMetamodelBuilder new.
	builder client: importer.
	builder document: [
		packageDict keysAndValuesDo: [ :pname :classes |
		builder package: pname with: [
			classes keysAndValuesDo: [ :cname :props | 
			builder class: cname with: [
				props do: [ :prop |
					"prop is a quintuple {name. type. opposite. multivalued. derived}"
					builder perform: #property:type:opposite:multivalued:derived: withArguments: prop ]
			]]
		]]
	].
	self resolveSmalltalkBindingsIn: importer repository.
	^ importer repository