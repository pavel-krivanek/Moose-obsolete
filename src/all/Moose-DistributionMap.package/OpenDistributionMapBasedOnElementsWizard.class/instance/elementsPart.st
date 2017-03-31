initialize - elements parts
elementsPart
	^ (TextPart new)
		text:
				self groupClass asString asText allBold , Character cr asString
						, '=> launch distributionMap from corresponding groups to visualize from other type of elements';
		inGroupboxNamed: 'Type of elements';
		yourself