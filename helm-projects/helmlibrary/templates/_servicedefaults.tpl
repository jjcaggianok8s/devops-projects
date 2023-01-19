{{ define "helmlibrary.serviceDefaults" }}
apiVersion: consul.hashicorp.com/v1alpha1
kind: ServiceDefaults
metadata:
  name: {{ include "helmlibrary.serviceDefaultsName" . }}
spec:
  protocol: {{ .Values.serviceDefaults.spec.protocol }}
{{- end }}