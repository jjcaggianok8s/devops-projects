{{ define "helmlibrary.configmap" }}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .Values.configmap.metadata.name }}
  namespace: {{ .Values.namespace }}
data:
  {{- (.Files.Glob "configmap/*").AsConfig | nindent 2 }}
{{- end }}