My subclasses are very simple factories that serve as entry point to create different kind of behaviors. There should be no instances of me.

The behaviors are composition of a RGBehavior instances and a strategy that describes a kind of the behavior. The behavior factory only create sach pairs so for example my subclass RGClass creates a composition of RGBehavior instance with a RGClassStrategy. 