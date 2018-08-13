I'm a representation of a Pharo environment that contains behaviors, packages and global variables. I have my own announcer for processing of events inside of the environment. 

I'm connected to a data source - backend, that provides me real data I'm working with. 

In most cases, you should communicate with me using my query interface. You will get it by sending me a message #ask.
