# Github Action example

```bash
docker build -t github-registry-example .
```

```bash
echo <token> | docker login ghcr.io -u <username> --password-stdin
docker tag  github-registry-example ghcr.io/ckam225/github-registry-example:latest
docker push ghcr.io/ckam225/github-registry-example
```
