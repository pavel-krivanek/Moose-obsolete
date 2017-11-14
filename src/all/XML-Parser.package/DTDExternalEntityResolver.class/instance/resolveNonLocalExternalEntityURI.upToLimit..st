private
resolveNonLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| response |

	response :=
		anXMLURIOrURIString asXMLHTTPRequest
			getResponseUpToLimit: aMaxSize
			decoding: false.

	^ DTDUndecodedResolvedExternalParsedEntityReplacement
		rawContents: response content
		encoding: response contentCharacterEncoding.