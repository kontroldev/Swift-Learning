#!/usr/bin/env python3
"""Comprueba rutas locales de enlaces Markdown; no valida URLs ni fragmentos."""
from pathlib import Path
from urllib.parse import unquote, urlsplit
import os
import re
import subprocess
import sys
import unicodedata

root = Path(__file__).resolve().parent.parent
link = re.compile(r'!?\[[^\]]*\]\(([^)]+)\)')
errors = []
checked = 0
tracked = subprocess.check_output(['git', 'ls-files', '-z'], cwd=root).decode('utf-8').split('\0')
canonical = {unicodedata.normalize('NFC', path): path for path in tracked}

for document in root.rglob('*.md'):
    if '.git' in document.parts:
        continue
    fenced = False
    for number, line in enumerate(document.read_text(encoding='utf-8').splitlines(), 1):
        if re.match(r'^\s*(```|~~~)', line):
            fenced = not fenced
            continue
        if fenced:
            continue
        matches = list(link.finditer(line))
        starts = {match.start(1) - 2 for match in matches}
        for marker in re.finditer(r'\]\(', line):
            if marker.start() not in starts:
                errors.append(f'{document.relative_to(root)}:{number}: posible enlace Markdown incompleto')
        for match in matches:
            destination = match.group(1).strip().split()[0].strip('<>')
            parsed = urlsplit(destination)
            if parsed.scheme or parsed.netloc or not parsed.path:
                continue
            checked += 1
            target = document.parent / unquote(parsed.path)
            if not target.exists():
                errors.append(f'{document.relative_to(root)}:{number}: {destination}')
                continue
            relative = os.path.relpath(target, root)
            stored = canonical.get(unicodedata.normalize('NFC', relative))
            if stored is not None and relative != stored:
                errors.append(f'{document.relative_to(root)}:{number}: la ruta no coincide exactamente con Git: {destination}')

if errors:
    print('\n'.join(errors), file=sys.stderr)
    sys.exit(1)
print(f'{checked} enlaces locales comprobados.')
