<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style>
      * {
        font-family: Arial, Helvetica, sans-serif;
      }
      h1 {
        text-align: center;
      }
      .severity {
        text-align: center;
        font-weight: bold;
        color: #fafafa;
      }
      .severity-LOW { background-color: #5fbb31; }
      .severity-MEDIUM { background-color: #e9c600; }
      .severity-HIGH { background-color: #ff8800; }
      .severity-CRITICAL { background-color: #e40000; }
      table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        padding: .3em;
      }
      table {
        margin: 0 auto;
      }
    </style>
    <title>Checkov Report - {{ now }}</title>
  </head>
  <body>
    <h1>Checkov Report - {{ now }}</h1>
    <table>
      {{- range . }}
      <tr class="severity-{{ .Severity | escapeXML }}">
        <th>Resource</th>
        <th>Check ID</th>
        <th>Severity</th>
        <th>Message</th>
        <th>Guide</th>
      </tr>
      <tr>
        <td>{{ .Resource | escapeXML }}</td>
        <td>{{ .CheckID | escapeXML }}</td>
        <td class="severity">{{ .Severity | escapeXML }}</td>
        <td>{{ .Message | escapeXML }}</td>
        <td><a href="{{ .GuideURL | escapeXML }}">Link</a></td>
      </tr>
      {{- end }}
    </table>
    {{- else }}
    <h1>No Issues Found by Checkov</h1>
    {{- end }}
  </body>
</html>
