Propel Clone
============

https://github.com/Xosofox/propel is a copy of all the official SVN repos of propel versions, commited into branches

The intention of these repos is to use them as a git submodule in your project.

For "1.6" only, you can check out 
https://github.com/Xosofox/propel1.6

THIS version includes all versions in different branches




For example, when working with Symfony2 and git, and using Propel as your ORM, you might be using

https://github.com/willdurand/PropelBundle

including it as a git submodule.

Since the bundle depends on phing and propel, you might want to include

    > git submodule add https://github.com/Xosofox/phing vendor/phing
    > git submodule add https://github.com/Xosofox/propel1.6 vendor/propel
