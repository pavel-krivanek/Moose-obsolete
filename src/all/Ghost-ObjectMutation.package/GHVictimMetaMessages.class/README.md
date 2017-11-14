I am special meta messages container which is used as preferred implementation for meta messages of mutated objects.
For example if #class message is considered as meta then it should return origial class of objects instead of mutation. 
Such overriden methods can be added to me in same way like other meta messages are defined in GHMetaMessages subclasses.  Only difference that I am not used to detect that intercepted message is meta.
