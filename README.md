# In-development Penguin Chat emulator written in Node.js

Currently I need to find some correct game files.

Penguin Chat runs on SmartFoxServer or PHP long polling which is OK, but there's an admin tool.

We must check in 'Core.js' if the incoming packets are game or from the admin tool.

A database class is already created, just in case we ever need it.

Upon login, the 'login' packet also sends <pword> while there's no password to enter, might remove it myself?

A white frame appears upon in-game. Could this be an SWF issue?