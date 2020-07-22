To reproduce: run `nix-shell`

Error:

```
    ERROR: Command errored out with exit status 1:
     command: /nix/store/j3q3f6nmaif7lmqdsp8fg2hxxrd4w1gh-python3-3.7.6/bin/python3.7 -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/build/pip-req-build-d2bwucs0/setup.py'"'"'; __file__='"'"'/build/pip-req-build-d2bwucs0/setup.
py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' egg_info --egg-base /build/pip-req-build-d2bwucs0/pip-egg-info
         cwd: /build/pip-req-build-d2bwucs0/
    Complete output (38 lines):
    WARNING: The directory '/homeless-shelter/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo,
 you may want sudo's -H flag.
    WARNING: Retrying (Retry(total=4, connect=None, read=None, redirect=None, status=None)) after connection broken by 'NewConnectionError('<pip._vendor.urllib3.connection.VerifiedHTTPSConnection object at 0x7ffff5ef58d0>: Failed to estab
lish a new connection: [Errno -2] Name or service not known')': /simple/pytest-runner/
    WARNING: Retrying (Retry(total=3, connect=None, read=None, redirect=None, status=None)) after connection broken by 'NewConnectionError('<pip._vendor.urllib3.connection.VerifiedHTTPSConnection object at 0x7ffff5f0e750>: Failed to estab
lish a new connection: [Errno -2] Name or service not known')': /simple/pytest-runner/
    WARNING: Retrying (Retry(total=2, connect=None, read=None, redirect=None, status=None)) after connection broken by 'NewConnectionError('<pip._vendor.urllib3.connection.VerifiedHTTPSConnection object at 0x7ffff5f0e950>: Failed to estab
lish a new connection: [Errno -2] Name or service not known')': /simple/pytest-runner/
    WARNING: Retrying (Retry(total=1, connect=None, read=None, redirect=None, status=None)) after connection broken by 'NewConnectionError('<pip._vendor.urllib3.connection.VerifiedHTTPSConnection object at 0x7ffff5f0eb10>: Failed to estab
lish a new connection: [Errno -2] Name or service not known')': /simple/pytest-runner/
    WARNING: Retrying (Retry(total=0, connect=None, read=None, redirect=None, status=None)) after connection broken by 'NewConnectionError('<pip._vendor.urllib3.connection.VerifiedHTTPSConnection object at 0x7ffff5f0e9d0>: Failed to estab
lish a new connection: [Errno -2] Name or service not known')': /simple/pytest-runner/
    ERROR: Could not find a version that satisfies the requirement pytest-runner (from versions: none)
    ERROR: No matching distribution found for pytest-runner
    Traceback (most recent call last):
      File "/nix/store/4rx2rdjxlj47bl5ds5razad6cqp8sc1f-python3.7-setuptools-44.0.0/lib/python3.7/site-packages/setuptools/installer.py", line 128, in fetch_build_egg
        subprocess.check_call(cmd)
      File "/nix/store/j3q3f6nmaif7lmqdsp8fg2hxxrd4w1gh-python3-3.7.6/lib/python3.7/subprocess.py", line 363, in check_call
        raise CalledProcessError(retcode, cmd)
    subprocess.CalledProcessError: Command '['/nix/store/j3q3f6nmaif7lmqdsp8fg2hxxrd4w1gh-python3-3.7.6/bin/python3.7', '-m', 'pip', '--disable-pip-version-check', 'wheel', '--no-deps', '-w', '/build/tmpfem6gw9x', '--quiet', 'pytest-runne
r']' returned non-zero exit status 1.
```
