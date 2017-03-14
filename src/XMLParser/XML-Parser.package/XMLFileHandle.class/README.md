This is an abstract class for file handles to read/write/delete files. Subclasses need to implement the abstract methods, and then instances of the correct concrete class for this platform can be created by sending #asXMLFileHandle to a string.

The #readStream/#writeStream messages return file streams that do decoding/encoding, while the #rawReadStream/#rawWriteStream streams don't.

These classes implement the #get/#getUpToLimit:decoding: and #streamGet/#streamGetUpToLimit:decoding: interface of XMLURI.