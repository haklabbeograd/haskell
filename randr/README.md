== Scripting multiple display in Haskell ==

First goal of this project is figuring out X11 lib and its Haskell bindings.
Success is when we can produce info about screens and outputs similar to those
`xrandr` command produces when called without arguments.

Second goal is using that info and set of rules to automatically adjust things.

