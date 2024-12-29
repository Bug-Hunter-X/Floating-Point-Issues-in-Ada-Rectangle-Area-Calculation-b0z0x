# Ada Floating Point Precision Bug

This repository demonstrates a potential issue with floating-point precision in Ada when performing calculations, specifically calculating the area of a rectangle.  The `Calculate_Area` function, while seemingly simple, can produce slightly inaccurate results depending on the input values and the underlying floating-point representation used by the Ada compiler.

## The Problem

Floating-point numbers are inherently imprecise due to their representation in binary format. Small rounding errors can accumulate during calculations, leading to results that deviate slightly from the expected mathematical outcome.

## Solution

The solution is to use a more robust approach to floating-point calculations that accounts for potential precision loss. One strategy involves carefully considering the impact of rounding errors and using appropriate rounding modes or data types (e.g., higher precision types if available).   Another technique might involve performing calculations using fixed-point arithmetic for scenarios where exact results are crucial.

## How to Reproduce

1. Compile and run the Ada code in `bug.ada`.
2. Observe the calculated area.  While the output might be close to the expected result (50.0), due to floating-point representation, it might differ ever so slightly.
3.  Compare the result with the more robust solution in `bugSolution.ada` (if applicable).