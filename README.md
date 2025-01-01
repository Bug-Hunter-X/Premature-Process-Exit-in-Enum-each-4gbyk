# Elixir Enum.each and Process.exit Bug

This repository demonstrates a subtle bug in Elixir code involving the `Enum.each` function and the `Process.exit` function.  Improper usage of `Process.exit` within `Enum.each` can lead to unexpected process termination.

The `bug.ex` file contains the buggy code. The `bugSolution.ex` file shows the corrected version.

## Problem
The original code attempts to iterate over a list and print each element, exiting if a specific condition is met. However, `Process.exit` terminates the entire process, halting execution prematurely, and potentially losing any other data or operations.

## Solution
The corrected code uses a more appropriate way to control the loop's behavior.  Instead of `Process.exit`, it uses a conditional check within the function passed to Enum.each to gracefully handle the desired behavior.