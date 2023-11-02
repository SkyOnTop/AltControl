def check_string_presence():
    if "This file was protected with MoonSec V3 by federal9999 on discord" not in __file__:
        raise SystemExit("Unauthorized access. Script execution is not allowed.")
