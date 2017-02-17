This class represents a stream reader that implements pushBack: using nested streams. This enables subsitution/replacement to be performed without modifying the underlying collections streamed-over or having to copy them. It also performs line-ending normalization, transforming a CR or a CRLF sequence into a single LF character.

(The code in this class is optimized; refactor with care.)