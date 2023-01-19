{{ define "helmlibrary.serviceAccount" }}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "helmlibrary.serviceAccountName" . }}
automountServiceAccountToken: {{ .Values.serviceAccount.automountServiceAccountToken }}
{{- end }}