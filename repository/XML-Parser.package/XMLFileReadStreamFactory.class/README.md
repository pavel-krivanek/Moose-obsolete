An abstract factory for file read streams used by XMLFileHandles.

Subclasses should create read streams that return raw byte characters and not characters decoded from some encoding (like UTF-8), so that XMLParser can do its own decoding later looking at byte-order marks and the <?xml ...?> encoding attribute.