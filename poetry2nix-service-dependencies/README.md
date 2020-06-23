Run :

```
nix build
```

Note that the python binary sees flask:

```
$ result/bin/python
>> import flask -- succeeds
```

Swap `default2.nix` to be `default.nix`, run `nix build` again:

```
$ result/bin/python
>> import flask -- fails
```
