{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "Cabi.Configuration.HelmChart.2021.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "Cabi.Configuration.HelmChart.2021.labels" -}}
helm.sh/chart: {{ include "Cabi.Configuration.HelmChart.2021.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
