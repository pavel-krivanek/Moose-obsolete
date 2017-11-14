decoding
decodeContent
	| converter |

	(converter := self contentCharacterEncoding asXMLStreamConverter) isNull
		ifFalse: [
			"Zinc also does some additional encoding sniffing besides looking at
			the Content-Type charset like looking at BOMs, so to make the WebClient
			behavior more consistent with it, we use #detectEncoding before
			converting"
			self webClientResponse content:
				((XMLDecodingReadStreamAdapter
					on: self content readStream
					streamConverter: converter)
						detectEncoding;
						upToEnd)]