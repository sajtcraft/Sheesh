"use strict"

const Server  = require("./src/server/Server")
const Logger  = require("./src/server/Logger").Logger
const version = require("./package").version

console.log(`Penguin Chat 3 Emulator by Zaseth V${version}
:::::::::   ::::::::   ::::::::  ::::::::::: ::::::::  
:+:    :+: :+:    :+: :+:    :+:     :+:    :+:    :+: 
+:+    +:+ +:+               +:+     +:+    +:+        
+#++:++#+  +#+            +#++:      +#+    +#++:++#++ 
+#+        +#+               +#+     +#+           +#+ 
#+#        #+#    #+# #+#    #+# #+# #+#    #+#    #+# 
###         ########   ########   #####      ########  `)

new Server(process.argv[2] || 9339)