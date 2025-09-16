<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DevOps Dashboard - Logs</title>
  <style>
    body {
      font-family: monospace;
      background-color: #1e1e1e;
      color: #dcdcdc;
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
    .container {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      grid-gap: 15px;
      padding: 15px;
    }
    .log-box {
      background: #2d2d2d;
      border-radius: 8px;
      box-shadow: 0 0 8px rgba(0,0,0,0.5);
      padding: 10px;
      overflow-y: auto;
      height: 300px;
    }
    .log-title {
      background: #444;
      padding: 8px;
      border-radius: 6px;
      font-weight: bold;
      margin-bottom: 10px;
      color: #ffd700;
    }
    .log-line {
      margin: 2px 0;
    }
    .success { color: #4caf50; }
    .error { color: #f44336; }
    .warn { color: #ff9800; }
    .info { color: #2196f3; }
  </style>
</head>
<body>
  <header>DevOps Dashboard - Jenkins | Tomcat | Docker | AWS</header>

  <div class="container">
    <!-- Jenkins Logs -->
    <div class="log-box">
      <div class="log-title">Jenkins Logs</div>
      <div class="log-line info">[INFO] Started by user admin</div>
      <div class="log-line success">[SUCCESS] Build #24 completed successfully</div>
      <div class="log-line warn">[WARN] Deprecated plugin detected</div>
      <div class="log-line error">[ERROR] Test suite failed in stage: IntegrationTests</div>
    </div>

    <!-- Tomcat Logs -->
    <div class="log-box">
      <div class="log-title">Tomcat Logs</div>
      <div class="log-line info">[INFO] Server startup in 4500 ms</div>
      <div class="log-line success">[SUCCESS] Application deployed: /myapp</div>
      <div class="log-line warn">[WARN] Session timeout not configured, using default</div>
      <div class="log-line error">[ERROR] ServletException: NullPointerException at Controller</div>
    </div>

    <!-- Docker Logs -->
    <div class="log-box">
      <div class="log-title">Docker Logs</div>
      <div class="log-line info">[INFO] Pulling image nginx:latest</div>
      <div class="log-line success">[SUCCESS] Container started: nginx_12345</div>
      <div class="log-line warn">[WARN] High memory usage in container app_backend</div>
      <div class="log-line error">[ERROR] Failed to connect to network: bridge</div>
    </div>

    <!-- AWS Logs -->
    <div class="log-box">
      <div class="log-title">AWS Logs</div>
      <div class="log-line info">[INFO] EC2 instance i-0a12b34c running</div>
      <div class="log-line success">[SUCCESS] S3 bucket sync completed</div>
      <div class="log-line warn">[WARN] High CPU usage on Lambda function paymentHandler</div>
      <div class="log-line error">[ERROR] CloudWatch alarm triggered: DiskSpaceLow</div>
    </div>
  </div>
</body>
</html>
