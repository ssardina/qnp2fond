# Translator from QNPs to FOND: Qualitative Numeric Planning to Fully Observable Non-Deterministic Planning

The translator is invoked using

```
qnp2fond <qnp-file> <counter-capacity> <loop-nesting> <prefix>
```

where:
 
* `qnp-file`: the name of a `.qnp` file representing a QNP problem; see below for its format.
* `loop-nesting`: size of the stack to handle nested loops (number of constants of type `depth`).
    * one constant per stack level, e.g., `d0`, `d1`, ...,  `dk` if stack of size `k`.
    * stack will contain numeric variables and dictate which variable can be decreased (the one at the top of the 
    stack) and which ones can be increased (ones not in stack at all). 
* `counter-capacity`: number of bits required for the various counters (number of constants of type `bit`)
    * each stack level will have an associated counter; counter for empty stack is "stage counter".
    * each counter of size up to `n` will be represented with `log(n)` bits: `b0`, `b1`, ...
* `prefix`: prefix string for the generated domain and problem files.

Both `counter-capacity` and `loop-nesting` are non-negative integers, typically small ones such as 0, 1 or 2.

## QNP Format

QNP problems are stored in files with `.qnp` extension in QNP format, with the following parts:

1. Name of QNP
2. Name of features and their types (numeric or boolean).
3. Description of the initial situation.
4. Description of the goal situation.
5. Description of actions.


The file begins with a line containing the **name of the QNP** (e.g., `blocks-clear-x`). Next, the second line contains the **list of used features with their types** as follows: 

* an initial integer counts the number of features;
* followed by a _list of pairs_ where the first component is the name of the feature and 
the second indicates whether the feature is _numeric_ (1) or _boolean_ (0).

For example, the file ```examples/blocks04.qnp``` begins with

```
blocks-clear-x
5 nabove(A) 1 nother(A) 1 hold(A) 0 hold-other(A) 0 some-below(A) 0
```

indicating that the QNP consists of 5 features: two numerical features ```nabove(A)``` and ```nother(A)```, and three boolean features ```hold(A)```, ```hold-other(A)```, and ```some-below(A)```.

The following two lines (i.e., lines 3 and 4) contain the **description of the _initial_ and _goal_ situations**, respectively. Both are described in a similar way:

* A first integer tells the number of conditions in the line. 
* After that, a list of pairs of items: the first is the _name of the feature_ and the second denotes the _condition on the feature_:
    * 0 for a numeric feature being _equal to zero_; or _false_ for a boolean feature.
    * 1 for a numeric feature being _greater than zero_; or _true_ for a boolean feature.

An example of an initial and goal situations in the blocks world example is:

```
4 nabove(A) 1 hold(A) 0 hold-other(A) 0 some-below(A) 1
3 nabove(A) 0 hold(A) 0 hold-other(A) 0
```

These two lines are encoding the following initial and goal situations:

* In the initial situation:
    * the numeric variable``nabove(a)`` has a value greater than zero, and numeric variable ``nother(A)`` is equal to
     zero; and
    * the boolean fluents ``hold(A)`` and ``hold-other(A)`` are both false; and the boolean fluent ``some-below(A)`` is true.
* In the goal situation:
    * the numeric variable ``nabove(A)`` is zero; and
    * the boolean fluents ``hold(A)`` and ``hold-other(A)`` are both false.


The rest of the file contains the **description of the actions**.

It starts with a line (i.e., line 5) explicitly stating the number of actions in the file.

Each **action** is then described with three lines: 

1. the first line is the name of the action;
2. the second line gives the preconditions of the action; and
3. the third line gives the effects of the action.

A **precondition** line starts with the is the number of conditions and followed by a list of conditions, each being 
a pair: the first component is the name of the feature and the second the condition on such a feature (0 for feature equal to zero or false; and 1 for feature greater than zero or true).

The **effects** are described in a similar way. The first item tells the number of effects. Then, for each effect, 
the name of the affected feature is given followed with the effect on the feature: 

* 0 if the feature is decremented (for numerical) or set to false (for boolean);
* 1 if the feature is incremented (for numerical) or set to true for (for boolean).

For example, the file ```examples/blocks04.qnp``` continues as follows:

```
8
Pick-x-some-below
4 nabove(A) 0 hold(A) 0 hold-other(A) 0 some-below(A) 1
3 nother(A) 1 hold(A) 1 some-below(A) 0

....
```

This means that there are 8 actions listed. The first one is called `Pick-x-some-below` and has 4 preconditions and 3
 effects. For example, the precondition states that `nabove(A)` has to be equal to zero, `hold(A)` and `hold-other(A)
 ` false, and  `some-below(A)` true. Similarly, when executed, the action will increment and make `nother(A)` greater
  than zero, set `hold(A)` to true, and `some-below(A)` to false.






