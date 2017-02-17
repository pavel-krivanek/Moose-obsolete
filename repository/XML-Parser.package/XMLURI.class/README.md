A class for XML URIs. Instances are immutable and support combining with other XMLURIs or URI strings using / (to resolve relative URIs in the context of the receiver), accessing URI components, creating copies with replaced components, and retrieving the contents of http:// and file:// URLs using XMLHTTPRequest and XMLFileHandle.

Uses XMLURIParser to parse URIs lazily (for example, when a URI compoenent is accessed with an "accessing" message) when created from a string and eagerly when created from a stream.

URI components are stored internally in encoded form and decoded only when needed, because the XML standard requires delaying decoding for as long as possible.