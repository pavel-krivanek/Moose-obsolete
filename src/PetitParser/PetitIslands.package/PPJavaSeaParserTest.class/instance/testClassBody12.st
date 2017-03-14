tests - class
testClassBody12
	self parse: '{
    public boolean addAll(int index, Collection<? extends E> c) {
    }	
   
	 public Iterator<E> iterator() {
        return listIterator();
    }	 
}' 
	rule: #classBody.
	
	self assert: result isPetitFailure not.
	self assert: result first simpleName = 'addAll'.
	self assert: result second simpleName = 'iterator'.
