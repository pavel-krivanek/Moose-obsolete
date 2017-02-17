resources
downloadCountries
	"Retrieving some data from FreeBase."
	
	"self downloadCountries"

	^ TRPlatform current httpClientRequestClass new
		url: 'http://restcountries.eu/rest/v1/all';
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get