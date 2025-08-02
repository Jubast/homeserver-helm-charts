# vaultwarden

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.34.3](https://img.shields.io/badge/AppVersion-1.34.3-informational?style=flat-square)

A Helm chart for vaultwarden

**This chart is not maintained by the upstream project and any issues with the chart should be raised [here](https://github.com/Jubast/homeserver-helm-charts/issues)**

**Homepage:** <https://github.com/Jubast/homeserver-helm-charts/tree/main/charts/vaultwarden>

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
helm install vaultwarden jubast-helm-charts/vaultwarden -f values.yaml
```

## Values example
```yaml
# N/A
```

## Uninstalling the Chart

To uninstall the `vaultwarden` chart

```console
helm uninstall vaultwarden
```

The command removes all the Kubernetes components associated with the chart **excluding** persistent volumes (by default) and deletes the release.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| activeWorkers | string | `"10"` |  |
| adminRateLimitMaxBurst | string | `"3"` |  |
| adminRateLimitSeconds | string | `"300"` |  |
| adminToken | string | `""` |  |
| adminTokenExistingSecret | string | `""` |  |
| affinity | object | `{}` |  |
| args | list | `[]` |  |
| automountServiceAccountToken | bool | `false` |  |
| command | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| containerPorts.http | int | `8080` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.privileged | bool | `false` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| containerSecurityContext.runAsGroup | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.seLinuxOptions | object | `{}` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| domain | string | `""` |  |
| emailChangeAllowed | bool | `false` |  |
| emergencyAccessAllowed | bool | `true` |  |
| emergencyNotifReminderSched | string | `"0 3 * * * *"` |  |
| emergencyRqstTimeoutSched | string | `"0 7 * * * *"` |  |
| eventCleanupSched | string | `"0 10 0 * * *"` |  |
| eventsDayRetain | string | `""` |  |
| experimentalClientFeatureFlags | string | `nil` |  |
| extendedLogging | bool | `true` |  |
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
| hibpApiKey | string | `""` |  |
| hostAliases | list | `[]` |  |
| iconBlacklistNonGlobalIps | bool | `true` |  |
| iconRedirectCode | string | `"302"` |  |
| iconService | string | `"internal"` |  |
| image.digest | string | `"sha256:84fd8a47f58d79a1ad824c27be0a9492750c0fa5216b35c749863093bfa3c3d7"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"vaultwarden/server"` |  |
| image.tag | string | `"1.34.3"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.apiVersion | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.hostname | string | `"vaultwarden.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.secrets | list | `[]` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.tls | bool | `false` |  |
| initContainers | list | `[]` |  |
| invitationExpirationHours | string | `"120"` |  |
| invitationOrgName | string | `"Vaultwarden"` |  |
| invitationsAllowed | bool | `false` |  |
| ipHeader | string | `"X-Real-IP"` |  |
| kubeVersion | string | `""` |  |
| lifecycleHooks | object | `{}` |  |
| listenAddress | string | `"0.0.0.0"` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `600` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| logFile | string | `""` |  |
| logLevel | string | `""` |  |
| logTimestampFormat | string | `"%Y-%m-%d %H:%M:%S.%3f"` |  |
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
| orgAttachmentLimit | string | `""` |  |
| orgCreationUsers | string | `""` |  |
| orgEventsEnabled | bool | `false` |  |
| pdb.create | bool | `true` |  |
| pdb.maxUnavailable | string | `""` |  |
| pdb.minAvailable | string | `""` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.attachmentsPath | string | `"/data/attachments"` |  |
| persistence.dataPath | string | `"/data"` |  |
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
| podSecurityContext.fsGroup | int | `1001` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"Always"` |  |
| podSecurityContext.supplementalGroups | list | `[]` |  |
| podSecurityContext.sysctls | list | `[]` |  |
| priorityClassName | string | `""` |  |
| pushNotifications.enabled | bool | `false` |  |
| pushNotifications.existingSecret | string | `""` |  |
| pushNotifications.identityUri | string | `""` |  |
| pushNotifications.installationId | string | `""` |  |
| pushNotifications.installationKey | string | `""` |  |
| pushNotifications.relayUri | string | `""` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `30` |  |
| readinessProbe.path | string | `"/"` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| requireDeviceEmail | bool | `false` |  |
| resources | object | `{}` |  |
| resourcesPreset | string | `"micro"` |  |
| schedulerName | string | `""` |  |
| sendsAllowed | bool | `true` |  |
| service.annotations | object | `{}` |  |
| service.clusterIP | string | `""` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.nodePorts.http | string | `""` |  |
| service.ports.http | int | `80` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| showPassHint | bool | `false` |  |
| sidecars | list | `[]` |  |
| signupDomains | string | `""` |  |
| signupsAllowed | bool | `false` |  |
| signupsVerify | bool | `true` |  |
| smtp.acceptInvalidCerts | bool | `false` |  |
| smtp.acceptInvalidHostnames | bool | `false` |  |
| smtp.authMechanism | string | `"Plain"` |  |
| smtp.debug | bool | `false` |  |
| smtp.existingSecret | string | `""` |  |
| smtp.from | string | `""` |  |
| smtp.fromName | string | `""` |  |
| smtp.host | string | `""` |  |
| smtp.password | string | `""` |  |
| smtp.port | int | `25` |  |
| smtp.security | string | `"starttls"` |  |
| smtp.username | string | `""` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.failureThreshold | int | `5` |  |
| startupProbe.initialDelaySeconds | int | `600` |  |
| startupProbe.path | string | `"/"` |  |
| startupProbe.periodSeconds | int | `10` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.timeoutSeconds | int | `5` |  |
| timeZone | string | `""` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| trashAutoDeleteDays | string | `""` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| userAttachmentLimit | string | `""` |  |
| userSendLimit | string | `""` |  |
| webVaultEnabled | bool | `true` |  |

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