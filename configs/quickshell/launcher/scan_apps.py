#!/usr/bin/env python3

from pathlib import Path
import configparser
import json
import os

APP_DIRS = [
    "/usr/share/applications",
    "/usr/local/share/applications",
    os.path.expanduser("~/.local/share/applications"),
]

apps = []
seen = set()

for directory in APP_DIRS:
    path = Path(directory)
    if not path.exists():
        continue

    for file in path.glob("*.desktop"):
        parser = configparser.ConfigParser(interpolation=None)

        try:
            parser.read(file, encoding="utf-8")
        except Exception:
            continue

        if "Desktop Entry" not in parser:
            continue

        entry = parser["Desktop Entry"]

        if entry.get("NoDisplay", "false").lower() == "true":
            continue

        if entry.get("Hidden", "false").lower() == "true":
            continue

        name = entry.get("Name")
        exec_cmd = entry.get("Exec")
        icon = entry.get("Icon", "")
        comment = entry.get("Comment", "")

        if not name or not exec_cmd:
            continue

        if name in seen:
            continue

        seen.add(name)

        apps.append({
            "name": name,
            "exec": exec_cmd,
            "icon": icon,
            "comment": comment,
        })

apps.sort(key=lambda x: x["name"].lower())

output = Path(__file__).parent / "apps.json"
output.write_text(json.dumps(apps, indent=2), encoding="utf-8")

print(f"Wrote {len(apps)} applications to {output}")
