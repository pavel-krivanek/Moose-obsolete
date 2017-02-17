initialize - containers parts
containersPart
	^ (TextPart new)
		text:
				self groupClass asString asText allBold , Character cr asString
						, '=> launch distributionMap from corresponding groups to visualize on other types';
		inGroupboxNamed: 'Type of parts';
		yourself