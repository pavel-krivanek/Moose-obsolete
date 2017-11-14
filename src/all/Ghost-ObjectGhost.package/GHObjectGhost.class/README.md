I am abstract ghost implementation which uses #doesNotUnderstand: approach to intercept all messages.

My subclasses should decide how ghost behaviour should be defined. Should it be singleton for all ghosts? Or should it be specific for each ghost?

Subclasses should implement single method #ghostBehaviour to return GHGhostBehaviour instance. 
Also they should implement instance creation method by #basicNew to create correctly initialized instances. 