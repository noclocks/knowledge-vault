---
creation_date: 2024-03-05
modification_date: 2024-03-05
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Topic/Dev/Python
  - Status/Complete
aliases:
  - Python - Flask - Print Environment Variables
  - Environment Variables Endpoint in Flask
publish: true
cssclasses:
---

## Code

> [!ABOUT]
> Very simple web server API endpoint written in [[Flask]] that simply prints out the current environment variables. Useful for debugging.

```python
from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/env', methods=['GET'])
def get_envvars():
    env_vars = dict(os.environ)
    return jsonify(env_vars)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
```