private
basicGetUpToLimit: aMaxSize decoding: aBoolean
	| response |

	response :=
		(XMLClassFinder classNamed: #WebClient) new
			timeout: self defaultTimeout;
			httpGet: self url.
	response isSuccess
		ifFalse: [XMLHTTPException signal: response status].
	aMaxSize
		ifNotNil: [
			response contentLength
				ifNil: [
					response content size > aMaxSize
						ifTrue: [XMLLimitException signal]]
				ifNotNil: [
					response contentLength > aMaxSize
						ifTrue: [XMLLimitException signal]]].
	^ response content.