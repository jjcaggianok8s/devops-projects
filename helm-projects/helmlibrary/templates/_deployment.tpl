{{ define "helmlibrary.deployment" }}
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: {{ .Values.namespace }}
  name: {{ include "helmlibrary.deploymentName" . }}
  labels:
    {{- toYaml .Values.deployment.metadata.labels | nindent 4 }}
spec:
{{- with .Values.deployment.spec }}
  replicas: {{ .replicaCount }}
  selector:
    matchLabels:
      {{- toYaml .selector.matchLabels | nindent 6 }}
  template:
    metadata:
      labels:
        {{- toYaml .template.metadata.labels | nindent 8 }}
      {{- if .template.metadata.annotationenable }}
      annotations:
        {{- toYaml .template.metadata.annotations | nindent 8 }}
      {{- end }}
  {{- end }}
    spec:
      {{- if .Values.serviceAccount.metadata.name }}
      serviceAccountName: {{ include "helmlibrary.serviceAccountName" . }}
      {{- end }}
    {{- with .Values.deployment.spec.template.spec }}
      {{- if .securityContextenabled }}
      securityContext:
        {{- toYaml .securityContext | nindent 8 }}
      {{- end }}
      {{- if .imagePullSecretsenabled }}
      imagePullSecrets:
      {{- toYaml .imagePullSecrets | nindent 6 }}
      {{- end }}
      {{- if .volumesenabled }}
      volumes:
      {{- range .volumes }}
      {{- if .configMapEnabled }}
      - name: {{ .name }}
        configMap:
          {{- toYaml .configMap | nindent 10 }}
      {{- else }}
      - name: {{ .name }}
        emptyDir: {}
      {{- end }}
      {{- end }}
      {{- end }}
      containers:
      {{- range .containers }}
        - name: {{ .name }}
          image: {{ .image }}
          ports:
            {{- toYaml .ports | nindent 12 }}
          {{- if .envEnabled }}
          env:
          {{- range .env }}
            - name: {{ .name }}
              value: {{ .value }} 
          {{- end }}
          {{- end }}
          {{- if .argsEnabled }}
          args: {{ .args }}
          {{- end }}
          {{- if .volumeMountsenabled }}
          volumeMounts:
          {{- range .volumeMounts }}
            - name: {{ .name }}
              mountPath: {{ .mountPath }}
              readOnly: {{ .readOnly }}
          {{- end }}
          {{- end }}
          {{- if .resourcesEnabled }}
          resources:
            {{- toYaml .resources | nindent 12 }}
          {{- end }}
          {{- if .readinessProbeEnabled }}
          readinessProbe:
            {{- toYaml .readinessProbe | nindent 12 }}
          {{- end }}
          {{- if .livenessProbeEnabled }}
          livenessProbe:
            {{- toYaml .livenessProbe | nindent 12 }}
          {{- end }}
          {{- if .securityContextContainerEnabled }}
          securityContext:
            {{- toYaml .securityContext | nindent 12 }}
          {{- end }}
      {{- end }}
      {{- end }}
{{- end }}