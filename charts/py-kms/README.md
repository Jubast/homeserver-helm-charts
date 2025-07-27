# py-kms

py-kms KMS server (https://py-kms.readthedocs.io/en/latest/)

## Installation

```bash
helm install py-kms ./py-kms
```

## Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `image.repository` | py-kms image repository | `pykmsorg/py-kms` |
| `image.tag` | py-kms image tag | `latest` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `service.type` | Service type | `ClusterIP` |
| `service.port` | Service port | `1688` |
| `resources` | Resource limits/requests | `{}` |

See `values.yaml` for all configurable options.

## Usage

After deployment, the KMS server will be available on the Service dns name and port 1688 (inside the cluster). To expose it publicly configure the service as a NodePort.
