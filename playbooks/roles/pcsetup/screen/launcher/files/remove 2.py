#!/usr/bin/env python3
import subprocess
import sys

key = "com.canonical.Unity.Launcher"
desktopfile = sys.argv[1]

curr_launcher = eval(subprocess.check_output([
    "gsettings", "get", key, "favorites"
    ]).decode("utf-8"))
new_launcher = [item for item in curr_launcher if not desktopfile in item] 
subprocess.Popen(["gsettings", "set", key,"favorites",str(new_launcher)])
