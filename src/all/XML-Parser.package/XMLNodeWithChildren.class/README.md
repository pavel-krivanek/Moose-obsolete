This is an abstract class for nodes that can contain child nodes.

It has messages to access, add and remove child nodes. The nodes are stored in a kind of XMLObservableList returned by #nodes, which can be modified directly to add or remove nodes from the owner of #nodes (copy it first if that isn't what you want).

There are three types of "enumerating" messages: the #nodes* messages enumerate child nodes of the receiver, the #allNode* forms enumerate (using depth-first traversal) the receiver and all descendant nodes, and the #descendantNode* forms  enumerate only descendant nodes.