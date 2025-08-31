# wg-easy

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 15.1.0](https://img.shields.io/badge/AppVersion-15.1.0-informational?style=flat-square)

A Helm chart for wg-easy

**This chart is not maintained by the upstream project and any issues with the chart should be raised [here](https://github.com/Jubast/homeserver-helm-charts/issues)**

**Homepage:** <https://github.com/Jubast/homeserver-helm-charts/tree/main/charts/wg-easy>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Jubast | <30406814+Jubast@users.noreply.github.com> | <https://github.com/Jubast> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://jubast.github.io/homeserver-helm-charts/ | common | 1.0.0 |

## Installing the Chart

```console
helm repo add jubast-helm-charts https://jubast.github.io/homeserver-helm-charts
helm repo update
helm install wg-easy jubast-helm-charts/wg-easy -f values.yaml
```

## Values example
```yaml
# public ip address (client uses this ip to connect)
host: '127.0.0.1'
adminUsername: admin
adminPassword: changeMeeeeAdmin1234

ingress:
  enabled: true
  class: nginx
  hostname: your.hostname.here

containerPorts:
  wg: 31820

service:
  type: NodePort
  nodePorts:
    wg: 31820
```

## Uninstalling the Chart

To uninstall the `wg-easy` chart

```console
helm uninstall wg-easy
```

The command removes all the Kubernetes components associated with the chart **excluding** persistent volumes (by default) and deletes the release.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminPassword | string | `"changeMyMin12LongPass"` |  |
| adminUsername | string | `"admin"` |  |
| affinity | object | `{}` |  |
| args | list | `[]` |  |
| automountServiceAccountToken | bool | `false` |  |
| command | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| containerPorts.http | int | `8080` |  |
| containerPorts.wg | int | `51820` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `true` |  |
| containerSecurityContext.capabilities.allow[0] | string | `"NET_ADMIN"` |  |
| containerSecurityContext.capabilities.allow[1] | string | `"SYS_MODULE"` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.privileged | bool | `true` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `false` |  |
| containerSecurityContext.runAsGroup | int | `0` |  |
| containerSecurityContext.runAsNonRoot | bool | `false` |  |
| containerSecurityContext.runAsUser | int | `0` |  |
| containerSecurityContext.seLinuxOptions | object | `{}` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| dns | string | `""` |  |
| extraContainerPorts | list | `[]` |  |
| extraDeploy | list | `[]` |  |
| extraEnvVars | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| extraEnvVarsSecret | string | `""` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.compatibility.openshift.adaptSecurityContext | string | `"auto"` |  |
| global.defaultStorageClass | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| global.security.allowInsecureImages | bool | `false` |  |
| global.storageClass | string | `""` |  |
| host | string | `"wg-easy.local"` |  |
| hostAliases | list | `[]` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"wg-easy/wg-easy"` |  |
| image.tag | string | `"15.1.0"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.apiVersion | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.hostname | string | `"wg-easy.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.secrets | list | `[]` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.tls | bool | `false` |  |
| initContainers | list | `[]` |  |
| ipv4CIDR | string | `""` |  |
| ipv6CIDR | string | `""` |  |
| kubeVersion | string | `""` |  |
| lifecycleHooks | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `600` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| nameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.allowExternalEgress | bool | `true` |  |
| networkPolicy.enabled | bool | `true` |  |
| networkPolicy.extraEgress | list | `[]` |  |
| networkPolicy.extraIngress | list | `[]` |  |
| networkPolicy.ingressNSMatchLabels | object | `{}` |  |
| networkPolicy.ingressNSPodMatchLabels | object | `{}` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| pdb.create | bool | `true` |  |
| pdb.maxUnavailable | string | `""` |  |
| pdb.minAvailable | string | `""` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.configPath | string | `"/etc/wireguard"` |  |
| persistence.dataSource | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.hostPath | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.storageClass | string | `""` |  |
| podAffinityPreset | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"Always"` |  |
| podSecurityContext.supplementalGroups | list | `[]` |  |
| podSecurityContext.sysctls | list | `[]` |  |
| priorityClassName | string | `""` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `30` |  |
| readinessProbe.path | string | `"/"` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| resources | object | `{}` |  |
| resourcesPreset | string | `"micro"` |  |
| schedulerName | string | `""` |  |
| service.annotations | object | `{}` |  |
| service.clusterIP | string | `""` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.extraPorts | list | `[]` |  |
| service.labels | object | `{}` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.nodePorts.http | string | `""` |  |
| service.nodePorts.wg | string | `""` |  |
| service.ports.http | int | `80` |  |
| service.ports.wg | int | `51820` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| sidecars | list | `[]` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.failureThreshold | int | `5` |  |
| startupProbe.initialDelaySeconds | int | `600` |  |
| startupProbe.path | string | `"/"` |  |
| startupProbe.periodSeconds | int | `10` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.timeoutSeconds | int | `5` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |

## Changelog

All notable changes to this Helm chart will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### 0.0.1

#### Added

- initial release of helm chart

#### Changed

N/A

#### Fixed

N/A

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)