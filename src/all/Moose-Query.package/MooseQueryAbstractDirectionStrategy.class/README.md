Description
--------------------

I am an abstract class part of a Design Pattern Strategy. 

With my subclasses we manage the direction of the MooseQueries and everything related to direction in the queries.

I am able to return the right strategy to use in a query with the method #fromSymbol. This method takes a symbol representing a direction as parameter and return the right strategy. 

Example
-------------------

	MooseQueryAbstractDirectionStrategy fromSymbol: #in