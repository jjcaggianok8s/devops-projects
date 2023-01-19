{{/*
Uses a if control to control lenght of Service Account name
*/}}

{{- define "helmlibrary.serviceAccountName" -}}
{{- if .Values.serviceAccount.metadata.name -}}
{{ .Values.serviceAccount.metadata.name | trunc 15 | trimSuffix "-" }}
{{- end -}}
{{- end -}}

{{/*
Uses a if control to control lenght of Service Defaults name
*/}}

{{- define "helmlibrary.serviceDefaultsName" -}}
{{- if .Values.serviceDefaults.metadata.name -}}
{{ .Values.serviceDefaults.metadata.name | trunc 15 | trimSuffix "-" }}
{{- end -}}
{{- end -}}


{{/*
Uses a if control to control lenght of Service name
*/}}

{{- define "helmlibrary.serviceName" -}}
{{- if .Values.service.metadata.name -}}
{{ .Values.service.metadata.name | trunc 15 | trimSuffix "-" }}
{{- end -}}
{{- end -}}


{{/*
Uses a if control to control lenght of Deployment name
*/}}

{{- define "helmlibrary.deploymentName" -}}
{{- if .Values.deployment.metadata.name -}}
{{ .Values.deployment.metadata.name | trunc 15 | trimSuffix "-" }}
{{- end -}}
{{- end -}}


{{/*
Uses a if control to control lenght of Ingress name
*/}}

{{- define "helmlibrary.ingressName" -}}
{{- if .Values.ingress.metadata.name -}}
{{ .Values.ingress.metadata.name | trunc 15 | trimSuffix "-" }}
{{- end -}}
{{- end -}}




