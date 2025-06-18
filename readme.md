Overview
========
A mathmatical equation, programming code and an AI query can be compared.
They each provide a common service of allowing someone to describe a problem,
and solve it. Each can be used successfully to determine the correct result to the problem.

When a problem is shared within an organisation, it needs to be communicated
beyond the original authors, and each of these techniques do this.

By comparing the three techniques a common requirement can be found:
Each requires that the context of the problem and the nature of the required
parameters are understood.

Determining the audiance who will read the problem description and need to understand it
is vital in choosing which to use.

While AI is very powerful, its cost in time and money needs to be considered
if it is to be used for repeated tasks.

The syntax of programming code still provides a good way of describing a
problem that will allow for successful long term maintenance and use.


Pythagoras' theroum
===================

Pythagoras' is taught at an early stage of most people's introduction to mathematics.
It is so well known that many people can name it from sight alone. Show them the
forumlae and they will recognise it immediately:

> a<sup>2</sup> = b<sup>2</sup> + c<sup>2</sup>

It describes the ratios of the lengths of the side of a right angled triangle.
In the equation:

- `a` is the length of the hypontenuse (longest side opposite the right angle)
- `b` and `c` are the lengths of the other two sides respectively.

Calculating the length of a side
--------------------------------

If the lengths of two sides are known, then the equation can be used to
calculate the length of the other side.

For example, if a right angled triangle has a hypothenuse that is 9cm long,
and another side that is 3cm long, we can rearrange the formula to
calculate the length of the other side:

> c = $`\sqrt{a^2 - b^2}`$

or

> c = $`\sqrt{9^2 - 3^2}`$

Programming Pythagoras
======================

As a Ruby programmer I could take Pythagoras' equation as it is normally
presented and incorporate into a program:

```ruby
c = Math.sqrt(a ** 2 - b ** 2)
```

However, most people seeing that code would not immediately understand
what it does or how to use it. What are `a`, `b` and `c`?

When those parameters are not presented in the standard arrangement,
it is not obvious that they are the dimensions of the sides of a
triangle.

Descriptive code
----------------

In programming, parameters are usually named so that people viewing
code can better understand what the code describes. So a better
way of writing the code above would be:

```ruby
unknown_side = Math.sqrt(hypotenuse ** 2 - known_side ** 2)
```

Though one could argue that even this assumes that the reader will
recognise that an equation that includes something called a
hypotenuse and two sides relates to a right angled triangle.
However, this may be determined from the context within which
the code is used.

Variations in writing descriptive code
--------------------------------------

Four versions of the same code are presented here. They can be decribed by the
name of the object (Ruby class) that contains the code:

- `T` : `./t.rb`
- `RightAngledTriangle` : `./right_angled_triangle.rb`
- `Geometric::RightAngledTriangle` : `./geometric.rb`
- `ThreeSidedGeometricalShapeWhereTwoSidesIntersectAtNinetyDegrees` : `./three_sided_geometrical_shape_where_two_sides_intersect.rb`

### T

Uses the parameters from the original equation:

> a<sup>2</sup> = b<sup>2</sup> + c<sup>2</sup>

The code is short and of the four is closest to how the computer sees the problem.

But for a human it is the hardest to understand.

### RightAngledTriangle

Uses the more descriptive coding technique described above.
However, it still presumes that the person understands what a hypotenuse,
and right angled triangle are.

### Geometric::RightAngledTriangle

Uses a namespace (the module `Geometric`) to set context. It then describes
more basic objects to define the more fundemental components that go together
to describe a right angled triange as a geometical object made up of three
intersecting lines.

The code uses both names and construction to describe the objects.

### ThreeSidedGeometricalShapeWhereTwoSidesIntersectAtNinetyDegrees

Uses long parameter names to detail the meaning of the components used
in the code. It is very descriptive, but demonstrates how being too
verbose can make the code hard to read and understand.

### Summary of coded examples

The examples show how code can be written to make it easier for people
reading the code to understand what the code does. They show the
extremes of lack of expression (`T`) and an excess of verbosity
(`ThreeSidedGeometricalShapeWhereTwoSidesIntersectAtNinetyDegrees`)
can limit the reader's understanding of the code.

However, it is worth recognising that each clearly defines the
three main elements needed for the calculation. With the exception of `T`,
each one uses its context to indicate where and how the code can be used.

The code in the file `/.main.rb` uses each of the code examples to
determine the length of a side of a right angled triangle if the
hypotenuse has length 9 and a side has length 3. Each one outputs
the result: *8.48528137423857*

Pythagoras in the time of Artifical Intelligence
================================================

The main characteristic of Artifical Intelligence (AI) is its ability
to understand plain human language and use it to compute outcomes.

This allows us to effectively code our requirements in plain English.
I can pass the following to an AI tool:

> If I have a right angled triangle with a hypotenuse of 9 cm and a
> side of 3cm how long would the other side be?

Input into a Google search input generates the result:

> The length of the other side is approximately 8.49 cm.

AI has processed the input and extract the key information:

- it relates to a right angled triangle
- the lengths of the hypotenuse and another side are provided
- the length of the other side is required as output

The output also includes some useful information about how the
result was constructed.

A simplistic conclusion could be why would we need to code this
at all now that we have AI!

Looking a little closer
-----------------------

On first look the input looks simple, but in fact it needed some
thought. To understand this consider another example AI input:

> If I have a triangle with a side of 9 cm and a side of 3cm
> how long would the other side be?

This looks very similar to the first AI input, but results in
this output:

> The length of the other side must be greater than 6 cm
> and less than 12 cm.

That is, to get the desired result the context, that this query
related to a right angled triangle, needs to be passed in.

Note also that the AI has assumed that a result rounded to two
decimal points was required but such a stipulation is not present
in the request.

It is also worth considering another variation of the request:

> If I have a triangle with a hypotenuse of 9 cm and a side of 3 cm
> how long would the other side be?

This returns the result:

> The length of the other side is 6 $`sqrt{2}`$ cm

Six times the square root of two is 8.48528137423857. So a
different way of describing the same result.

However, the AI has assumed a right angled triangle is the
subject of the query. Pesumable because the word hypotenuse
was used to describe one of the sides.

So this gives the correct result but the text fails to
include a key element that a casual reader may miss. It does
not express the problem in as easily understandable way as
the original example.

Comparison of the three ways of presenting the problem
======================================================

The original equation, the Ruby code and the AI query
can all be used to determine the length of a third side
of a right angled triangle.

Each one requires a clear definition of the four things:

- That the sides being considered are those of a right
  angled triangle
- The length of the hypotenuse
- The length of one of the sides
- The desired output (the length of the other side)

Each one gives the desired result

So what is the difference between the three?

Audiance and use
----------------

### Pythagoras' theroum

The original presentation is very relevant to someone
who has been taught basic maths and the use of this
equation in particular. Someone not familar with
the equation would find it very hard to understand
how it is used.

Also the audiance for the original equation was
expected to work on it using paper and pen. In
that context using very short variable names
comprising single letters made sense. Single
letter variable names save a lot of time and
effort if you have to write them by hand each
time you used them.

However, in a world of computers where copying
and pasting or autocompleting a word is easy,
the brevity provides much less benefit.

### Descriptive code

Programming languages provide a syntax and structure to
descibe a problem in a clear concise manner. Modern
languages such as Ruby allow that code to be written in
a way that is understandable even to those with a very
limited knowledge of the language.

The four examples given show how the coding conventions
express the meaning of the code and how it is to be used.
They also show how a developer can use property naming
to match the expected audiance. Two examples are extreme,
but the `Geometric::RightAngledTriangle` and
`RightAngledTriangle` show how the code can be varied
to match the expected context knowledge of the reader
of the code.

Understanding is vitally important for a developer who
needs to fix, improve or alter code in the future.

Writing code in a fashion that takes the least effort
to understand by another developer is the most important
development skill.

#### Performance tuning

Another consideration can be seen in the `RightAngledTriangle` example.
It contains this code:

```ruby
case
when hypotenuse / 5.0 == known_side / 3.0
  hypotenuse / 4.0
when hypotenuse / 5.0 == known_side / 4.0
  hypotenuse / 3.0
else
  Math.sqrt(hypotenuse ** 2 - known_side ** 2)
end
```
There is a special case called the 3-4-5 triangle, where a right
angled triangle has sides of the ratios of 3:4:5 and this can
be used to determine the relative lengths rather than using
squares and square roots.

It shows how code can be modified to use potentially more
efficient processing to determine a result.

### AI

Using AI allows the definition of problem to be made
in plain language which most people reading it would
understand.

However, to be successful the fundamental elements
still need to be carefully determined and accurately
expressed.

While using human languages lowers the threshold of
understanding, it can also introduce ambiguity and
a lack of precision.

There is also a cost to using AI. The obvious one is in
time. Running the AI query takes a matter of seconds.
Running the coded examples is almost instanteous and
that runs all four variations of the code.

While this time cost is insignificant in this simple
case, if an operation that required multiple iteration
of the query, the time would make a serious impact to
the performance of that operation.

It is also possible that the choice of language may
influence the process used to determine the result and
this choice of process may not be the most efficient.

There could also be a financial cost. AI are usually
provided via a hosted service that maybe free for occasional
use, can be increasingly expensive for repeated use.

Conclusion
==========

- Each of the techniques are ways of expressing a
  problem and determining a result.
- Each requires that the context of the problem and the
  nature of the required parameters are understood.
- Each technique is tailored towards or is best suited
  to a particular audiance.
