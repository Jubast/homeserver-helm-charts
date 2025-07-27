{{/*
Return the proper py-kms image name
*/}}
{{- define "py-kms.image" -}}
{{- include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "py-kms.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image ) "global" .Values.global) -}}
{{- end -}}

{{/*
Return the proper py-kms container name
*/}}
{{- define "py-kms.container.name" -}}
{{- include "common.names.name" . -}}
{{- end -}}

{{/*
 Create the name of the service account to use
 */}}
{{- define "py-kms.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{- default (include "common.names.fullname" .) .Values.serviceAccount.name -}}
{{- else -}}
    {{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}