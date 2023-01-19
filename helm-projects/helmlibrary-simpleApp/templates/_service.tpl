{{ define "helmlibrary.service" }}
apiVersion: v1
kind: Service
metadata:
  name: {{ include "helmlibrary.serviceName" . }}
  labels:
    {{- toYaml .Values.service.metadata.labels | nindent 4 }}
spec:
  type: {{ .Values.service.spec.type }}
  ports:
  {{- range .Values.service.spec.ports }}
    - port: {{ .port }}
      targetPort: {{ .targetPort }}
      protocol: {{ .protocol }}
  {{- end }}
  selector:
    app: {{ .Values.deployment.metadata.labels.app }}
{{- end }}