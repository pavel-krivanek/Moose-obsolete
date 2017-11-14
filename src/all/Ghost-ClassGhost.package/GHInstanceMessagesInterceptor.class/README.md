I am used to intercept messages from instance which class was substituted by GHClassGhost
I play role of superclass of proxified class and I intercept messages by #cannotInterpret: trick. Then I found real class proxy and delegate message to it behavior.

I can be used as class of superclass variable of GHClassGhost. It will reduce number of objects required to substitute real object class.
Or my instance can be used as superclass variable of GHClassGhost. In this case my superclass can be initialized with original object class. And internaly VM will think that object still belongs to original class by inheritance chain. And for example such proxified object can be used normally with VM #perform: primitives with given lookup class.