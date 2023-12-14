<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trivy Terraform Scan Report</title>
    <style>
        /* Add your styling here */
    </style>
</head>
<body>
    <h1>Trivy Terraform Scan Report</h1>
    <table border="1">
        <tr>
            <th>File</th>
            <th>Check</th>
            <th>Details</th>
            <th>Severity</th>
        </tr>
        {{- range . }}
        <tr>
            <td>{{ .File }}</td>
            <td>{{ .Check }}</td>
            <td>{{ .Details }}</td>
            <td>{{ .Severity }}</td>
        </tr>
        {{- end }}
    </table>
</body>
</html>
