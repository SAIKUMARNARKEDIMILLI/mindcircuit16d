<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DevOps Logs</title>
  <style>
    body {
      background-color: #1e1e1e;
      color: #dcdcdc;
      font-family: monospace;
      margin: 0;
      padding: 0;
    }
    header {
      background: #007acc;
      padding: 15px;
      text-align: center;
      color: white;
      font-size: 20px;
      font-weight: bold;
    }
    .log-window {
      background: #000;
      color: #0f0;
      padding: 15px;
      margin: 20px;
      border-radius: 8px;
      height: 400px;
      overflow-y: auto;
      box-shadow: 0 0 10px rgba(0,0,0,0.6);
    }
    .log-line { margin: 5px 0; }
    .info { color: #2196f3; }
    .success { color: #4caf50; }
    .warn { color: #ff9800; }
    .error { color: #f44336; }
  </style>
</head>
<body>
  <header>DevOps Log Viewer</header>

  <div class="log-window">
    <div class="log-line info">[INFO] Jenkins: Build #101 started by user admin</div>
    <div class="log-line success">[SUCCESS] Jenkins: Build #101 completed successfully</div>
    <div class="log-line warn">[WARN] Tomcat: Session timeout not configured</div>
    <div class="log-line error">[ERROR] Tomcat: ServletException at /api/data</div>
    <div class="log-line info">[INFO] Docker: Pulling image node:18</div>
    <div class="log-line success">[SUCCESS] Docker: Container started backend_service</div>
    <div class="log-line warn">[WARN] AWS: High CPU usage on EC2 instance i-0abc123</div>
    <div class="log-line error">[ERROR] AWS: CloudWatch Alarm triggered - DiskSpaceLow</div>
  </div>
</body>
</html>
