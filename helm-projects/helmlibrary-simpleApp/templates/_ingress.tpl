{{ define "helmlibrary.ingress" }}
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {{ include "helmlibrary.ingressName" . }}
  {{- if .Values.ingress.metadata.annotationEnabled }}
  annotations:
    {{- toYaml .Values.ingress.metadata.annotations | nindent 4 }}
  {{- end }}
spec:
  {{- with .Values.ingress.spec }}
  ingressClassName: {{ .ingressClassName }} 
  rules:
  {{- range .rules }}
  {{- if .host }}
  - host: {{ .host }}
    http:
      paths:
      {{- toYaml .http.paths | nindent 6}}
  {{- else }}
  - http:
      paths:
      {{- toYaml .http.paths | nindent 6}}
  {{- end }}
  {{- end }}
  {{- end }}
{{- end }}