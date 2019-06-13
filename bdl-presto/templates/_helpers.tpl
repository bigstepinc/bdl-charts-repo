{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "bdl-presto.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "bdl-presto.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "bdl-presto.coordinator" -}}
{{ template "bdl-presto.fullname" . }}-coordinator
{{- end -}}

{{- define "bdl-presto.worker" -}}
{{ template "bdl-presto.fullname" . }}-worker
{{- end -}}

{{- define "bdl-presto.catalog" -}}
{{ template "bdl-presto.fullname" . }}-catalog
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "bdl-presto.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
