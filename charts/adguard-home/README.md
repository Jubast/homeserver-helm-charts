# adguard-home

![Version: 0.0.5](https://img.shields.io/badge/Version-0.0.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.107.64](https://img.shields.io/badge/AppVersion-v0.107.64-informational?style=flat-square)

A Helm chart for AdGuard Home

**This chart is not maintained by the upstream project and any issues with the chart should be raised [here](https://github.com/Jubast/homeserver-helm-charts/issues)**

**Homepage:** <https://github.com/Jubast/homeserver-helm-charts/tree/main/charts/adguard-home>

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
helm install adguard-home jubast-helm-charts/adguard-home -f values.yaml
```

## Values example
```yaml
ingress:
  enabled: true
  class: nginx
  hostname: your.hostname.here

service:
  type: LoadBalancer
  # public ip address (client uses this ip to connect)
  loadBalancerIP: 127.0.0.1

containerBootstrap:
  enabled: true
```

## Uninstalling the Chart

To uninstall the `adguard-home` chart

```console
helm uninstall adguard-home
```

The command removes all the Kubernetes components associated with the chart **excluding** persistent volumes (by default) and deletes the release.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adguardConfig.auth_attempts | int | `5` |  |
| adguardConfig.block_auth_min | int | `15` |  |
| adguardConfig.clients.persistent | list | `[]` |  |
| adguardConfig.clients.runtime_sources.arp | bool | `true` |  |
| adguardConfig.clients.runtime_sources.dhcp | bool | `true` |  |
| adguardConfig.clients.runtime_sources.hosts | bool | `true` |  |
| adguardConfig.clients.runtime_sources.rdns | bool | `true` |  |
| adguardConfig.clients.runtime_sources.whois | bool | `true` |  |
| adguardConfig.dhcp.dhcpv4.gateway_ip | string | `""` |  |
| adguardConfig.dhcp.dhcpv4.icmp_timeout_msec | int | `1000` |  |
| adguardConfig.dhcp.dhcpv4.lease_duration | int | `86400` |  |
| adguardConfig.dhcp.dhcpv4.options | list | `[]` |  |
| adguardConfig.dhcp.dhcpv4.range_end | string | `""` |  |
| adguardConfig.dhcp.dhcpv4.range_start | string | `""` |  |
| adguardConfig.dhcp.dhcpv4.subnet_mask | string | `""` |  |
| adguardConfig.dhcp.dhcpv6.lease_duration | int | `86400` |  |
| adguardConfig.dhcp.dhcpv6.ra_allow_slaac | bool | `false` |  |
| adguardConfig.dhcp.dhcpv6.ra_slaac_only | bool | `false` |  |
| adguardConfig.dhcp.dhcpv6.range_start | string | `""` |  |
| adguardConfig.dhcp.enabled | bool | `false` |  |
| adguardConfig.dhcp.interface_name | string | `""` |  |
| adguardConfig.dhcp.local_domain_name | string | `"lan"` |  |
| adguardConfig.dns.aaaa_disabled | bool | `false` |  |
| adguardConfig.dns.allowed_clients | list | `[]` |  |
| adguardConfig.dns.anonymize_client_ip | bool | `false` |  |
| adguardConfig.dns.bind_hosts[0] | string | `"0.0.0.0"` |  |
| adguardConfig.dns.blocked_hosts[0] | string | `"version.bind"` |  |
| adguardConfig.dns.blocked_hosts[1] | string | `"id.server"` |  |
| adguardConfig.dns.blocked_hosts[2] | string | `"hostname.bind"` |  |
| adguardConfig.dns.bogus_nxdomain | list | `[]` |  |
| adguardConfig.dns.bootstrap_dns[0] | string | `"1.1.1.1"` |  |
| adguardConfig.dns.bootstrap_dns[1] | string | `"1.0.0.1"` |  |
| adguardConfig.dns.bootstrap_dns[2] | string | `"2606:4700:4700::1111"` |  |
| adguardConfig.dns.bootstrap_dns[3] | string | `"2606:4700:4700::1001"` |  |
| adguardConfig.dns.bootstrap_prefer_ipv6 | bool | `false` |  |
| adguardConfig.dns.cache_optimistic | bool | `false` |  |
| adguardConfig.dns.cache_size | int | `4194304` |  |
| adguardConfig.dns.cache_ttl_max | int | `0` |  |
| adguardConfig.dns.cache_ttl_min | int | `0` |  |
| adguardConfig.dns.disallowed_clients | list | `[]` |  |
| adguardConfig.dns.dns64_prefixes | list | `[]` |  |
| adguardConfig.dns.edns_client_subnet.custom_ip | string | `""` |  |
| adguardConfig.dns.edns_client_subnet.enabled | bool | `false` |  |
| adguardConfig.dns.edns_client_subnet.use_custom | bool | `false` |  |
| adguardConfig.dns.enable_dnssec | bool | `false` |  |
| adguardConfig.dns.fallback_dns | list | `[]` |  |
| adguardConfig.dns.fastest_timeout | string | `"1s"` |  |
| adguardConfig.dns.handle_ddr | bool | `true` |  |
| adguardConfig.dns.hostsfile_enabled | bool | `true` |  |
| adguardConfig.dns.ipset | list | `[]` |  |
| adguardConfig.dns.ipset_file | string | `""` |  |
| adguardConfig.dns.local_ptr_upstreams | list | `[]` |  |
| adguardConfig.dns.max_goroutines | int | `300` |  |
| adguardConfig.dns.pending_requests.enabled | bool | `true` |  |
| adguardConfig.dns.port | int | `5353` |  |
| adguardConfig.dns.private_networks | list | `[]` |  |
| adguardConfig.dns.ratelimit | int | `20` |  |
| adguardConfig.dns.ratelimit_subnet_len_ipv4 | int | `24` |  |
| adguardConfig.dns.ratelimit_subnet_len_ipv6 | int | `56` |  |
| adguardConfig.dns.ratelimit_whitelist | list | `[]` |  |
| adguardConfig.dns.refuse_any | bool | `true` |  |
| adguardConfig.dns.serve_http3 | bool | `false` |  |
| adguardConfig.dns.serve_plain_dns | bool | `true` |  |
| adguardConfig.dns.trusted_proxies[0] | string | `"127.0.0.0/8"` |  |
| adguardConfig.dns.trusted_proxies[1] | string | `"::1/128"` |  |
| adguardConfig.dns.upstream_dns[0] | string | `"https://cloudflare-dns.com/dns-query"` |  |
| adguardConfig.dns.upstream_dns_file | string | `""` |  |
| adguardConfig.dns.upstream_mode | string | `"load_balance"` |  |
| adguardConfig.dns.upstream_timeout | string | `"10s"` |  |
| adguardConfig.dns.use_dns64 | bool | `false` |  |
| adguardConfig.dns.use_http3_upstreams | bool | `false` |  |
| adguardConfig.dns.use_private_ptr_resolvers | bool | `true` |  |
| adguardConfig.filtering.blocked_response_ttl | int | `10` |  |
| adguardConfig.filtering.blocked_services.ids | list | `[]` |  |
| adguardConfig.filtering.blocked_services.schedule.time_zone | string | `"UTC"` |  |
| adguardConfig.filtering.blocking_ipv4 | string | `""` |  |
| adguardConfig.filtering.blocking_ipv6 | string | `""` |  |
| adguardConfig.filtering.blocking_mode | string | `"default"` |  |
| adguardConfig.filtering.cache_time | int | `30` |  |
| adguardConfig.filtering.filtering_enabled | bool | `true` |  |
| adguardConfig.filtering.filters_update_interval | int | `24` |  |
| adguardConfig.filtering.parental_block_host | string | `"family-block.dns.adguard.com"` |  |
| adguardConfig.filtering.parental_cache_size | int | `1048576` |  |
| adguardConfig.filtering.parental_enabled | bool | `false` |  |
| adguardConfig.filtering.protection_disabled_until | string | `nil` |  |
| adguardConfig.filtering.protection_enabled | bool | `true` |  |
| adguardConfig.filtering.rewrites | list | `[]` |  |
| adguardConfig.filtering.safe_fs_patterns[0] | string | `"/opt/adguardhome/userfilters/*"` |  |
| adguardConfig.filtering.safe_search.bing | bool | `true` |  |
| adguardConfig.filtering.safe_search.duckduckgo | bool | `true` |  |
| adguardConfig.filtering.safe_search.ecosia | bool | `true` |  |
| adguardConfig.filtering.safe_search.enabled | bool | `false` |  |
| adguardConfig.filtering.safe_search.google | bool | `true` |  |
| adguardConfig.filtering.safe_search.pixabay | bool | `true` |  |
| adguardConfig.filtering.safe_search.yandex | bool | `true` |  |
| adguardConfig.filtering.safe_search.youtube | bool | `true` |  |
| adguardConfig.filtering.safebrowsing_block_host | string | `"standard-block.dns.adguard.com"` |  |
| adguardConfig.filtering.safebrowsing_cache_size | int | `1048576` |  |
| adguardConfig.filtering.safebrowsing_enabled | bool | `false` |  |
| adguardConfig.filtering.safesearch_cache_size | int | `1048576` |  |
| adguardConfig.filters[0].enabled | bool | `true` |  |
| adguardConfig.filters[0].id | int | `1` |  |
| adguardConfig.filters[0].name | string | `"AdGuard DNS filter"` |  |
| adguardConfig.filters[0].url | string | `"https://adguardteam.github.io/HostlistsRegistry/assets/filter_1.txt"` |  |
| adguardConfig.filters[1].enabled | bool | `false` |  |
| adguardConfig.filters[1].id | int | `2` |  |
| adguardConfig.filters[1].name | string | `"AdAway Default Blocklist"` |  |
| adguardConfig.filters[1].url | string | `"https://adguardteam.github.io/HostlistsRegistry/assets/filter_2.txt"` |  |
| adguardConfig.http.address | string | `"0.0.0.0:8080"` |  |
| adguardConfig.http.pprof.enabled | bool | `false` |  |
| adguardConfig.http.pprof.port | int | `6060` |  |
| adguardConfig.http.session_ttl | string | `"720h"` |  |
| adguardConfig.http_proxy | string | `""` |  |
| adguardConfig.language | string | `""` |  |
| adguardConfig.log.compress | bool | `false` |  |
| adguardConfig.log.enabled | bool | `true` |  |
| adguardConfig.log.file | string | `""` |  |
| adguardConfig.log.local_time | bool | `false` |  |
| adguardConfig.log.max_age | int | `3` |  |
| adguardConfig.log.max_backups | int | `0` |  |
| adguardConfig.log.max_size | int | `100` |  |
| adguardConfig.log.verbose | bool | `false` |  |
| adguardConfig.os.group | string | `""` |  |
| adguardConfig.os.rlimit_nofile | int | `0` |  |
| adguardConfig.os.user | string | `""` |  |
| adguardConfig.querylog.dir_path | string | `""` |  |
| adguardConfig.querylog.enabled | bool | `true` |  |
| adguardConfig.querylog.file_enabled | bool | `true` |  |
| adguardConfig.querylog.ignored | list | `[]` |  |
| adguardConfig.querylog.interval | string | `"2160h"` |  |
| adguardConfig.querylog.size_memory | int | `1000` |  |
| adguardConfig.schema_version | int | `29` |  |
| adguardConfig.statistics.dir_path | string | `""` |  |
| adguardConfig.statistics.enabled | bool | `true` |  |
| adguardConfig.statistics.ignored | list | `[]` |  |
| adguardConfig.statistics.interval | string | `"24h"` |  |
| adguardConfig.theme | string | `"auto"` |  |
| adguardConfig.tls.allow_unencrypted_doh | bool | `false` |  |
| adguardConfig.tls.certificate_chain | string | `""` |  |
| adguardConfig.tls.certificate_path | string | `""` |  |
| adguardConfig.tls.dnscrypt_config_file | string | `""` |  |
| adguardConfig.tls.enabled | bool | `false` |  |
| adguardConfig.tls.force_https | bool | `false` |  |
| adguardConfig.tls.port_dns_over_quic | int | `853` |  |
| adguardConfig.tls.port_dns_over_tls | int | `853` |  |
| adguardConfig.tls.port_dnscrypt | int | `0` |  |
| adguardConfig.tls.port_https | int | `443` |  |
| adguardConfig.tls.private_key | string | `""` |  |
| adguardConfig.tls.private_key_path | string | `""` |  |
| adguardConfig.tls.server_name | string | `""` |  |
| adguardConfig.tls.strict_sni_check | bool | `false` |  |
| adguardConfig.user_rules | list | `[]` |  |
| adguardConfig.users[0].name | string | `"admin"` |  |
| adguardConfig.users[0].password | string | `"$2a$10$nuRLtid3jenRs9LflSGQce85Ar0WLkeGSLTQ7zYiBNhrp8lkWEapm"` |  |
| adguardConfig.whitelist_filters | list | `[]` |  |
| affinity | object | `{}` |  |
| args | list | `[]` |  |
| automountServiceAccountToken | bool | `false` |  |
| command | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| containerBootstrap.configPath | string | `"/opt/adguardhome/conf"` |  |
| containerBootstrap.enabled | bool | `false` |  |
| containerBootstrap.image.digest | string | `""` |  |
| containerBootstrap.image.pullPolicy | string | `"IfNotPresent"` |  |
| containerBootstrap.image.pullSecrets | list | `[]` |  |
| containerBootstrap.image.registry | string | `"docker.io"` |  |
| containerBootstrap.image.repository | string | `"busybox"` |  |
| containerBootstrap.image.tag | float | `1.37` |  |
| containerBootstrap.resources | object | `{}` |  |
| containerBootstrap.resourcesPreset | string | `"nano"` |  |
| containerPorts.dns | int | `5353` |  |
| containerPorts.http | int | `8080` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.add[0] | string | `"NET_BIND_SERVICE"` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.privileged | bool | `false` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `false` |  |
| containerSecurityContext.runAsGroup | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.seLinuxOptions | object | `{}` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
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
| hostAliases | list | `[]` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"adguard/adguardhome"` |  |
| image.tag | string | `"v0.107.64"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.apiVersion | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.hostname | string | `"adguard.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.secrets | list | `[]` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.tls | bool | `false` |  |
| initContainers | list | `[]` |  |
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
| persistence.dataPath | string | `"/opt/adguardhome/work"` |  |
| persistence.dataSource | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.hostPath | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.size | string | `"64Mi"` |  |
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
| service.ports.dns | int | `53` |  |
| service.ports.http | int | `80` |  |
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