# drone-kubectl

Drone plugin for `kubectl apply -f`.

## Usage

   ```yaml
   deploy:
     kubernetes:
       image: chrisduong/drone-kubectl
       api_server: https://kubernetes.mycluster.com
       namespace: test
       resource_file: kubernetes.yml
       secrets: [kubectl_token]
   ```

## Docker Run

```sh
docker run --rm \
  -v $(pwd):/myapp \
  -e KUBECTL_API_SERVER=aaaaaaaaaa \
  -e KUBECTL_TOKEN=aaaaaaaa \
  -e KUBECTL_NAMESPACE=develop \
  -e KUBECTL_RESOURCE_FILE="mypod.yaml" \
  chrisduong/drone-kubectl
```