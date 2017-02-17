src
file5
 ^
'package java.lang;

import java.lang.reflect.Array;

/**
 * This is a class that has a comment!
 * public class Bar { public void bar() { } }  }
 *
 * @author  unascribed
 * @since   JDK1.0
 */
public final class Foo implements java.io.Serializable {
    /*
     * Constructor. Only the Java Virtual Machine creates Class
     * objects.
     */
    private Foo() {}


    /**
     * Converts the object to a string. The string representation is the
     * string "class" or "interface", followed by a space, and then by the
     * fully qualified name of the class in the format returned by
     * {@code getName}.  If this {@code Class} object represents a
     * primitive type, this method returns the name of the primitive type.  If
     * this {@code Class} object represents void this method returns
     * "void".
     *
     * @return a string representation of this class object.
     */
    public String toString() {
        return (isInterface() ? "interface " : (isPrimitive() ? "" : "class "))
            + getName();
    }
}'