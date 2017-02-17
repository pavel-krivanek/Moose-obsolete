resources
downloadCityCoordinatesFor: aCityName
	"Retrieving some data from FreeBase. We do only capitals for the time being."

	"
	self downloadCityCoordinatesFor: 'Dili'
	"

	^ (((TRPlatform current httpClientRequestClass new
		url: 'http://api.geonames.org/searchJSON';
		queryAt: 'q'
		put: (aCityName copyWithoutAll:
							' 	
');		queryAt: 'maxRows'
		put: '1';
		queryAt: 'username'
		put: 'demo';
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get) at: 'geonames') first )
		in: [ :city | 
			^ (city at: 'lat')	asNumber@ (city at: 'lng') asNumber ]