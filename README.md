Nape Physics Engine compiled to JavaScript
===

Nape is a 2d physics engine written in Haxe.  This is my build script and custom Haxe JavaScript generator that can create a JavaScript AMD (RequireJS) module out of the Nape engine.

Haxe can compile into JavaScript.  However, Nape uses Haxe getters and setters, which by default compile into `get_foo` and `set_foo` methods.  Since I want to target only newer JavaScript engines, I'd like to use JavaScript getters and setters.  Thus I customized the Haxe JavaScript generator to output the necessary `defineProperty` calls.

This build script also wraps the generated JavaScript in a call to `define`, making it an AMD module that
 can be loaded with RequireJS.
