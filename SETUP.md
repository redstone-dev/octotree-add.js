# Setup
Basically, all you need is a *`repository`*`/main/octo-add.rb` and you're raring to go!

First, type:
```ruby
require 'json' # This program needs JSON to output JSON values.
def init
  init = "initState['init/default']"
  outp = "JSON: #{JSON}"
  puts outp
  puts init
end
```
Then in *`repository`*`/main/octo-add.py`, write:
```python

def Init(json):
init = "initState[' init/default ']"
JSON = null
```
