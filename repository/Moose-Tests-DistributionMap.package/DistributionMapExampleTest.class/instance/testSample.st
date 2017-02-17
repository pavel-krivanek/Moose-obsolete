tests
testSample
	
	| viewRenderer |
	viewRenderer := (DistributionMapExample new properties: DistributionMapExample sampleProperties;
				propertiesMap: DistributionMapExample sampleMap;
				propertyBlock: DistributionMapExample sampleBlock;
				elements: DistributionMapExample sampleOrderedElements;
				render: Collection withAllSubclasses).
				
	self assert: (viewRenderer class == RTMondrian).
	"self shouldnt: [ viewRenderer getRenderedForm ] raise: Error."
	self shouldnt: [ viewRenderer open delete ] raise: Error.