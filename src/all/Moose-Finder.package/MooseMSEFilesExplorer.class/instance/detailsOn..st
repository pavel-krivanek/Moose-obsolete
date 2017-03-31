building
detailsOn: a
	a dynamic 
		display: [:file |  | repo string importer stacker |
			repo := [
				string := file readStream contents asString.
				importer := FMImporter new repository: (FMMetaRepository with: FMMetaRepository fm3).
				importer fromString: string.
				importer run.
				importer repository asMetarepository ] on: Error do: [:err | nil ].			
			stacker := GLMStacker new.
			repo notNil ifTrue: [
				stacker aPane: #metaBrowser.
				stacker transmit to: #metaBrowser; andShow: [:some | 
					some title: 'Explorer'.
					some custom: (MooseMetaBrowser new computeChildrenHierarchy: repo; browser)] ].
			stacker aPane: #mse.
			stacker transmit to: #mse; andShow: [:some |
				some title: file path basename"(file path printWithDelimiter: $/)".
				some text 
					display: [:x | self highlight: string ]].
			repo notNil ifTrue: [stacker startOn: repo] ifFalse: [stacker startOn: file]
	].
	