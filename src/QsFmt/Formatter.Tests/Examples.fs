﻿// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

/// <summary>
/// <see cref="QsFmt.Formatter.Tests.Example"/> test cases.
/// </summary>
module Microsoft.Quantum.QsFmt.Formatter.Tests.Examples

[<Example(ExampleKind.Format)>]
let ``Indents function`` =
    """namespace Foo {
function Bar() : Int {
let x = 5;
return x;
}
}""",

    """namespace Foo {
    function Bar() : Int {
        let x = 5;
        return x;
    }
}"""

[<Example(ExampleKind.Format)>]
let ``Indents if-else statement`` =
    """namespace Foo {
function Bar() : Int {
let x = 5;
if (x == 5) {
return x;
} else {
return x + 1;
}
}
}""",

    """namespace Foo {
    function Bar() : Int {
        let x = 5;
        if (x == 5) {
            return x;
        } else {
            return x + 1;
        }
    }
}"""

[<Example(ExampleKind.Format)>]
let ``Adds newlines and indents`` =
    """namespace Foo { function Bar() : Int { let x = 5; return x; } }""",

    """namespace Foo {
    function Bar() : Int {
        let x = 5;
        return x;
    }
}"""

[<Example(ExampleKind.Format)>]
let ``Removes extraneous spaces`` =
    """namespace     Foo {
    function Bar() : Int [     ] {
        let x= // Newlines are preserved.
            (7 *   1) // Comments too.
            + 4 / Fun<Bool,     Double>();
        let s = $"{ 1 +    2}";
        return  x w/ Foo <- (7, y);
    }
}""",

    """namespace Foo {
    function Bar() : Int [ ] {
        let x = // Newlines are preserved.
            (7 * 1) // Comments too.
            + 4 / Fun<Bool, Double>();
        let s = $"{ 1 + 2}";
        return x w/ Foo <- (7, y);
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Using Blocks`` =
    """namespace Foo {
    operation Bar() : Unit {
        using ((qubits, q) = (Qubit[2], Qubit())) {
            let x = // Newlines are preserved.
                (7 * 1) // Comments too.
                + 4 / Fun<Bool, Double>();
            using (q2 = Qubit()) {
                let s = $"{1 + 2}";
            }
        }
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        use (qubits, q) = (Qubit[2], Qubit()) {
            let x = // Newlines are preserved.
                (7 * 1) // Comments too.
                + 4 / Fun<Bool, Double>();
            use q2 = Qubit() {
                let s = $"{1 + 2}";
            }
        }
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Using Statements`` =
    """namespace Foo {
    operation Bar() : Unit {
        using ((qubits, q) = (Qubit[2], Qubit()));
        let x = // Newlines are preserved.
            (7 * 1) // Comments too.
            + 4 / Fun<Bool, Double>();
        using (q2 = Qubit());
        let s = $"{1 + 2}";
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        use (qubits, q) = (Qubit[2], Qubit());
        let x = // Newlines are preserved.
            (7 * 1) // Comments too.
            + 4 / Fun<Bool, Double>();
        use q2 = Qubit();
        let s = $"{1 + 2}";
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Borrowing Blocks`` =
    """namespace Foo {
    operation Bar() : Unit {
        borrowing ((qubits, q) = (Qubit[2], Qubit())) {
            let x = // Newlines are preserved.
                (7 * 1) // Comments too.
                + 4 / Fun<Bool, Double>();
            borrowing (q2 = Qubit()) {
                let s = $"{1 + 2}";
            }
        }
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        borrow (qubits, q) = (Qubit[2], Qubit()) {
            let x = // Newlines are preserved.
                (7 * 1) // Comments too.
                + 4 / Fun<Bool, Double>();
            borrow q2 = Qubit() {
                let s = $"{1 + 2}";
            }
        }
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Borrowing Statements`` =
    """namespace Foo {
    operation Bar() : Unit {
        borrowing ((qubits, q) = (Qubit[2], Qubit()));
        let x = // Newlines are preserved.
            (7 * 1) // Comments too.
            + 4 / Fun<Bool, Double>();
        borrowing (q2 = Qubit());
        let s = $"{1 + 2}";
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        borrow (qubits, q) = (Qubit[2], Qubit());
        let x = // Newlines are preserved.
            (7 * 1) // Comments too.
            + 4 / Fun<Bool, Double>();
        borrow q2 = Qubit();
        let s = $"{1 + 2}";
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Using with Comments`` =
    """namespace Foo {
    operation Bar() : Unit {
        using (
            q = Qubit() // comment
        ) {
        }
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        use"""
    + " "
    + """
            q = Qubit() // comment
         {
        }
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Updates Unit Types`` =
    """namespace Foo {
    operation Bar1() : () {
        return ();
    }

    operation Bar2() : ((), ()[], Int) {
        return ((), [(), ()], 3);
    }
}""",

    """namespace Foo {
    operation Bar1() : Unit {
        return ();
    }

    operation Bar2() : (Unit, Unit[], Int) {
        return ((), [(), ()], 3);
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Removes For-Loop Parens`` =
    """namespace Foo {
    operation Bar() : Unit {
        for (i in 0..3) {
            Message("HelloQ");
        }
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        for i in 0..3 {
            Message("HelloQ");
        }
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Allows size as an Identifier`` =
    """namespace Foo {
    operation Bar() : Unit {
        let size = 5;
        let ary = [4, size = 3];
        let ary2 = [3, 6, -12];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let size = 5;
        let ary = [4, size = 3];
        let ary2 = [3, 6, -12];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Basic Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Unit[2];
        let t2 = new Int[2];
        let t3 = new BigInt[2];
        let t4 = new Double[2];
        let t5 = new Bool[2];
        let t6 = new String[2];
        let t7 = new Result[2];
        let t8 = new Pauli[2];
        let t9 = new Range[2];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [(), size = 2];
        let t2 = [0, size = 2];
        let t3 = [0L, size = 2];
        let t4 = [0.0, size = 2];
        let t5 = [false, size = 2];
        let t6 = ["", size = 2];
        let t7 = [Zero, size = 2];
        let t8 = [PauliI, size = 2];
        let t9 = [1..0, size = 2];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Empty Array Syntax`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Unit[0];
        let t2 = new Int[0];
        let t3 = new BigInt[0];
        let t4 = new Double[0];
        let t5 = new Bool[0];
        let t6 = new String[0];
        let t7 = new Result[0];
        let t8 = new Pauli[0];
        let t9 = new Range[0];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [(), size = 0];
        let t2 = [0, size = 0];
        let t3 = [0L, size = 0];
        let t4 = [0.0, size = 0];
        let t5 = [false, size = 0];
        let t6 = ["", size = 0];
        let t7 = [Zero, size = 0];
        let t8 = [PauliI, size = 0];
        let t9 = [1..0, size = 0];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Tuple Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new (Int, (Double, Pauli), (String), Unit)[2];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [(0, (0.0, PauliI), (""), ()), size = 2];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Array Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Int[][2];
        let t2 = new Double[][][3];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [[0, size = 0], size = 2];
        let t2 = [[[0.0, size = 0], size = 0], size = 3];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Expression Size`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Int[[5, 7, 1][2]];
        let t2 = new Double[2+1];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [0, size = [5, 7, 1][2]];
        let t2 = [0.0, size = 2+1];
    }
}"""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Qubit Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Int[3];
        let t2 = new Qubit[3];
        let t3 = new Qubit[][3];
        let t4 = new (Int, (Double, Qubit), (String), Unit)[3];
        let t5 = new Double[3];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [0, size = 3];
        let t2 = new Qubit[3];
        let t3 = new Qubit[][3];
        let t4 = new (Int, (Double, Qubit), (String), Unit)[3];
        let t5 = [0.0, size = 3];
    }
}
Warning: Unable to updated deprecated new array syntax from line 4, character 18 to line 4, character 30.
Warning: Unable to updated deprecated new array syntax from line 5, character 18 to line 5, character 32.
Warning: Unable to updated deprecated new array syntax from line 6, character 18 to line 6, character 63."""

[<Example(ExampleKind.Update)>]
let ``Array Syntax UDT Types`` =
    """namespace Foo {
    newtype MyType = (First: Int, Second: Double);
    operation Bar() : Unit {
        let t1 = new Int[3];
        let t2 = new MyType[3];
        let t3 = new MyType[][3];
        let t4 = new (Int, (Double, MyType), (String), Unit)[3];
        let t5 = new Double[3];
    }
}""",

    """namespace Foo {
    newtype MyType = (First: Int, Second: Double);
    operation Bar() : Unit {
        let t1 = [0, size = 3];
        let t2 = new MyType[3];
        let t3 = new MyType[][3];
        let t4 = new (Int, (Double, MyType), (String), Unit)[3];
        let t5 = [0.0, size = 3];
    }
}
Warning: Unable to updated deprecated new array syntax from line 5, character 18 to line 5, character 31.
Warning: Unable to updated deprecated new array syntax from line 6, character 18 to line 6, character 33.
Warning: Unable to updated deprecated new array syntax from line 7, character 18 to line 7, character 64."""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Type Parameter Types`` =
    """namespace Foo {
    operation Bar<'T>() : Unit {
        let t1 = new Int[3];
        let t2 = new 'T[3];
        let t3 = new 'T[][3];
        let t4 = new (Int, (Double, 'T), (String), Unit)[3];
        let t5 = new Double[3];
    }
}""",

    """namespace Foo {
    operation Bar<'T>() : Unit {
        let t1 = [0, size = 3];
        let t2 = new 'T[3];
        let t3 = new 'T[][3];
        let t4 = new (Int, (Double, 'T), (String), Unit)[3];
        let t5 = [0.0, size = 3];
    }
}
Warning: Unable to updated deprecated new array syntax from line 4, character 18 to line 4, character 27.
Warning: Unable to updated deprecated new array syntax from line 5, character 18 to line 5, character 29.
Warning: Unable to updated deprecated new array syntax from line 6, character 18 to line 6, character 60."""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Function Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Int[3];
        let t2 = new (Int -> Unit)[3];
        let t3 = new (Int -> Unit)[][3];
        let t4 = new (Int, (Double, (Int -> Unit)), (String), Unit)[3];
        let t5 = new Double[3];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [0, size = 3];
        let t2 = new (Int -> Unit)[3];
        let t3 = new (Int -> Unit)[][3];
        let t4 = new (Int, (Double, (Int -> Unit)), (String), Unit)[3];
        let t5 = [0.0, size = 3];
    }
}
Warning: Unable to updated deprecated new array syntax from line 4, character 18 to line 4, character 38.
Warning: Unable to updated deprecated new array syntax from line 5, character 18 to line 5, character 40.
Warning: Unable to updated deprecated new array syntax from line 6, character 18 to line 6, character 71."""

[<Example(ExampleKind.Update)>]
let ``Array Syntax Operation Types`` =
    """namespace Foo {
    operation Bar() : Unit {
        let t1 = new Int[3];
        let t2 = new (Int => Unit)[3];
        let t3 = new (Int => Unit)[][3];
        let t4 = new (Int, (Double, (Int => Unit)), (String), Unit)[3];
        let t5 = new Double[3];
    }
}""",

    """namespace Foo {
    operation Bar() : Unit {
        let t1 = [0, size = 3];
        let t2 = new (Int => Unit)[3];
        let t3 = new (Int => Unit)[][3];
        let t4 = new (Int, (Double, (Int => Unit)), (String), Unit)[3];
        let t5 = [0.0, size = 3];
    }
}
Warning: Unable to updated deprecated new array syntax from line 4, character 18 to line 4, character 38.
Warning: Unable to updated deprecated new array syntax from line 5, character 18 to line 5, character 40.
Warning: Unable to updated deprecated new array syntax from line 6, character 18 to line 6, character 71."""
