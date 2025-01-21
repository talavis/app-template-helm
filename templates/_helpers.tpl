{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "k8s-application-template.fullname" -}}
{{- .Values.applicationName | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "k8s-application-template.labels" -}}
{{ include "k8s-application-template.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "k8s-application-template.selectorLabels" -}}
app.kubernetes.io/name: {{ include "k8s-application-template.fullname" . }}
{{- end }}
