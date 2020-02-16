# sorbet-memoist

Test script to demonstrate that Memoist does not work when a method has a sorbet type signature.

Run the test script
`./test.rb`

Notice that both the calls to `a` (which has  a type signature) are not memoized.

Notice that only the first call to `b` (without type signature) is not memoized.
