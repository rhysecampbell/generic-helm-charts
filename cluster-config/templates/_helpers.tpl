{{/*
Expand the name of the chart.
*/}}
{{- define "cluster-config.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-config.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cluster-config.labels" -}}
helm.sh/chart: {{ include "cluster-config.chart" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
