I am trait for most minical ghost implementations.
I define == and ~~ for information. These methods are special and actually never send to objects.

I define method #yourself because it is not make sense to push it to meta level. And in that case  GHEmptyMetaMessages will not be really empty. 

Method #isGhost is convinient method to easy check if object is ghost. It is implemented in ProtoObject too