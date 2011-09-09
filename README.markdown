Propel Clone
============

https://github.com/Xosofox/PropelVersions is a copy of all the official SVN repos of propel versions, commited into branches

The intention of these repos is to use them as a git submodule in your project.

For the current most updated version, you should check out the *official Propel repo* on
https://github.com/propelorm/Propel

THIS version includes all versions in different branches, taken from the old SVN repository (including 1.6)

Since the bundle depends on phing and propel, you might want to include

    > git submodule add https://github.com/Xosofox/phing vendor/phing
    > git submodule add https://github.com/Xosofox/propel1.6 vendor/propel
