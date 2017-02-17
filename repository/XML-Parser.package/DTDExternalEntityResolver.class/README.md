This class resolves external entity references using XMLURI, XMLHTTPRequest, and XMLFileHandle.

The #externalEntityURIFromPublicID:systemID: and #externalEntityURIFromPublicID:systemID:baseURI: convert public IDs and system IDs into resolvable XMLURI objects.

The #resolveExternalEntityURI: and #streamResolveExternalEntityURI: messages can resolve external entity XMLURIs or URI strings as either a string or a stream on the undecoded entity content. If the entity is in a file, then #streamResolveExternalEntityURI: can be used to avoid storing it in-memory, but if it's fetched over HTTP, it will just return a stream on the entire in-memory HTTP response.