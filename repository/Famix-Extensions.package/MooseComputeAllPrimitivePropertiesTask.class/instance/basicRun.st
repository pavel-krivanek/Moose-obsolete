private
basicRun

	model ifNil: [ ^ self error: 'Cannot be run without a reference to a model' ].
	model entities do: [:eachEntity |
   		eachEntity mooseDescription allPrimitiveAttributes do: [:eachProperty |
     		      eachEntity mmGetProperty: eachProperty ].
		self increment ]