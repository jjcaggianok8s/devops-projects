{{ define "helmlibrary.serviceIntentions" }}
apiVersion: consul.hashicorp.com/v1alpha1
kind: ServiceIntentions
metadata:
  name: {{ .Values.serviceIntentions.metadata.name }}
spec:
  destination:
    name: {{ .Values.serviceIntentions.spec.destination.name }}
  sources:
  {{- range .Values.serviceIntentions.spec.sources }}
    - name: {{ .name }}
      {{- if .action }}
      action: {{ .action }}
      {{- else }}
      permissons:
      {{- range .permissions }}
      - action: {{ .action }}
        http:
          {{- toYaml .http | nindent 10 }}
      {{- end }}      
      {{- end }}
  {{- end }}
{{- end }}