{{/*
Return the proper qbittorrent image name
*/}}
{{- define "qbittorrent.image" -}}
{{- include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "qbittorrent.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global) -}}
{{- end -}}

{{/*
Return the config Storage Class
*/}}
{{- define "qbittorrent.config.storageClass" -}}
{{- include "common.storage.class" (dict "persistence" .Values.persistence.config "global" .Values.global) -}}
{{- end -}}

{{/*
Return the downloads Storage Class
*/}}
{{- define "qbittorrent.downloads.storageClass" -}}
{{- include "common.storage.class" (dict "persistence" .Values.persistence.downloads "global" .Values.global) -}}
{{- end -}}

{{/*
Return config PVC name
*/}}
{{- define "qbittorrent.configPVC.fullname" -}}
{{ .Values.persistence.config.existingClaim | default (print (include "common.names.fullname" .) "-config") }}
{{- end -}}

{{/*
Return downloads PVC name
*/}}
{{- define "qbittorrent.downloadsPVC.fullname" -}}
{{ .Values.persistence.downloads.existingClaim | default (print (include "common.names.fullname" .) "-downloads") }}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "qbittorrent.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{- default (include "common.names.fullname" .) .Values.serviceAccount.name -}}
{{- else -}}
    {{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}