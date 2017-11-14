basic
basicGetResponseUpToLimit: aMaxSize decoding: aBoolean
	| response |

	(response := self newResponse)
		setWebClientResponse:
			((XMLClassFinder classNamed: #WebClient) new
				timeout: self defaultTimeout;
				httpGet: self url).
	response isSuccess
		ifFalse: [XMLHTTPException signal: response statusLine].
	aMaxSize
		ifNotNil: [
			response contentLength
				ifNil: [
					response content size > aMaxSize
						ifTrue: [XMLLimitException signal]]
				ifNotNil: [
					response contentLength > aMaxSize
						ifTrue: [XMLLimitException signal]]].
	aBoolean
		ifTrue: [response decodeContent].
	^ response.