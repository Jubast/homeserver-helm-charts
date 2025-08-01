# Homeserver helm charts

A collection of Helm charts for homeserver applications, created to fill gaps where official charts don't exist or to provide greater customization control. This repository focuses on self-hosted services and tools commonly used in home lab environments.

# Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repository as follows:

```console
helm repo add jubast-helm-charts https://jubast.github.io/homeserver-helm-charts
```

You can then run `helm search repo jubast-helm-charts` to see the charts.

# Remarks
- [charts](https://github.com/bitnami/charts) - The structure of these charts was heavily inspired by Bitnami charts.
- [helm-docs](https://github.com/norwoodj/helm-docs) - The documentation for these Helm charts exists only because of helm-docs.

Thanks :)

# License
MIT