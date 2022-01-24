This repo is used to showcase performance issues with poetry when using diverse pypi repositories as sources.
To test this, you should have `python3.8`, [`poetry`](https://python-poetry.org/docs/#installation) and `virtualenv`.

```bash
./run.sh
```

I have the following results:
- lock without mirror: 2.8s
- lock with mirror: 15.2s

This is weird that the installation with a mirror setup is 5x slower. Indeed, I set this source as secondary as described [here](https://python-poetry.org/docs/repositories/#install-dependencies-from-a-private-repository) in order to use Pypi as the primary source.
