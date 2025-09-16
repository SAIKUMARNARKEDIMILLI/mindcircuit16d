<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DevOps Live Logs</title>
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
  <header>DevOps Live Log Viewer</header>

  <div class="log-window" id="logWindow">
    <div class="log-line info">[INFO] DevOps log stream started...</div>
  </div>

  <script>
    const logWindow = document.getElementById("logWindow");

    const logs = [
      { type: "info", text: "Jenkins: Build #102 started by user admin" },
      { type: "success", text: "Jenkins: Build #102 completed successfully" },
      { type: "warn", text: "Tomcat: Session timeout not configured" },
      { type: "error", text: "Tomcat: ServletException at /api/users" },
      { type: "info", text: "Docker: Pulling image postgres:15" },
      { type: "success", text: "Docker: Container started db_service" },
      { type: "warn", text: "AWS: High CPU usage on Lambda function payments" },
      { type: "error", text: "AWS: CloudWatch Alarm triggered - DiskSpaceLow" }
    ];

    function addLog() {
      const log = logs[Math.floor(Math.random() * logs.length)];
      const line = document.createElement("div");
      line.className = `log-line ${log.type}`;
      const timestamp = new Date().toLocaleTimeString();
      line.textContent = `[${log.type.toUpperCase()}] ${timestamp} - ${log.text}`;
      logWindow.appendChild(line);
      logWindow.scrollTop = logWindow.scrollHeight; // auto scroll
    }

    // Add a new log every 2 seconds
    setInter
