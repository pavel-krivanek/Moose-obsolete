An abstract class for stream converters.

Subclasses need to implement #nextFromStream: to use #basicNext on the argument to read byte characters and decode them, and implement #nextPut:toStream: to use #basicNextPut:/#basicNextPutByte: on the second argument to encode the first.

The class #basicEncodingNames method should return a basic list of names for the encoding handled by the class, and #byteOrderMarkBytes can return the bytes of a BOM if the encoding has one.