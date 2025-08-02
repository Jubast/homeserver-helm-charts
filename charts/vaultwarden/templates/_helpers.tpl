{{/*
Return the proper Vaultwarden image name
*/}}
{{- define "vaultwarden.image" -}}
{{- include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "vaultwarden.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global) -}}
{{- end -}}

{{/*
Return  the proper Storage Class
*/}}
{{- define "vaultwarden.storageClass" -}}
{{- include "common.storage.class" (dict "persistence" .Values.persistence "global" .Values.global) -}}
{{- end -}}

{{/*
Vaultwarden root URL
*/}}
{{- define "vaultwarden.domain" -}}
{{- if .Values.domain -}}
    {{- print .Values.domain -}}
{{- else if .Values.ingress.enabled -}}
    {{- printf "http://%s" .Values.ingress.hostname -}}
{{- else if (and (eq .Values.service.type "LoadBalancer") .Values.service.loadBalancerIP) -}}
    {{- $url := printf "http://%s" .Values.service.loadBalancerIP -}}
    {{- $port:= .Values.service.ports.http | toString }}
    {{- if (ne $port "80") -}}
        {{- $url = printf "%s:%s" $url $port -}}
    {{- end -}}
    {{- print $url -}}
{{- end -}}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "vaultwarden.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{- default (include "common.names.fullname" .) .Values.serviceAccount.name -}}
{{- else -}}
    {{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "vaultwarden.env.existingSecrets" -}}
{{- if .Values.adminTokenExistingSecret }}
- name: ADMIN_TOKEN
  valueFrom:
    secretKeyRef:
      name: {{ .Values.adminTokenExistingSecret }}
      key: adminToken
{{- end }}
{{- if .Values.pushNotifications.existingSecret }}
- name: PUSH_INSTALLATION_ID
  valueFrom:
    secretKeyRef:
      name: {{ .Values.pushNotifications.existingSecret }}
      key: installationId
- name: PUSH_INSTALLATION_KEY
  valueFrom:
    secretKeyRef:
      name: {{ .Values.pushNotifications.existingSecret }}
      key: installationKey
{{- end }}
{{- if .Values.smtp.existingSecret }}
- name: SMTP_USERNAME
  valueFrom:
    secretKeyRef:
      name: {{ .Values.smtp.existingSecret }}
      key: username
- name: SMTP_USERNAME
  valueFrom:
    secretKeyRef:
      name: {{ .Values.smtp.existingSecret }}
      key: password
{{- end }}
{{- end -}}