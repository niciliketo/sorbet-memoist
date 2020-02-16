# sorbet-memoist

Test script to demonstrate that Memoist does not work when a method has a sorbet type signature.

Run the test script
`./test.rb`

Notice that both the first call to `a` (with a type signature) are not memoized.
Notice that only the first call to `b` (without type signature) is not memoized.
