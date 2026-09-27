Automated Vulnerability Scanner
Project Overview
This project automates basic vulnerability assessment against intentionally vulnerable local web applications using Nmap and Nuclei.
The scanner performs service detection, vulnerability scanning, and generates timestamped reports automatically.
Targets
OWASP Juice Shop
http://localhost:3000
DVWA
http://localhost:8080
Tools Used
Nmap
Nuclei
Docker
Bash
Git
Features
Service detection using Nmap
Automated Nuclei scanning
Multiple local targets
Timestamped scan reports
Combined summary report
Automated execution through Bash
Project Structure
automated-vulnerability-scanner/
├── README.md
├── methodology.md
├── remediation.md
├── targets.txt
├── scripts/
│   └── scan.sh
├── reports/
└── screenshots/
How It Works
The script performs three main steps.
1. Nmap scans the local host for exposed services on ports 3000 and 8080.
2. Nuclei scans OWASP Juice Shop.
3. Nuclei scans DVWA.
The results are saved automatically inside the reports directory.
Usage
Make the script executable:
chmod +x scripts/scan.sh
Run:
./scripts/scan.sh
Generated reports include:
nmap-TIMESTAMP.txt
nuclei-juiceshop-TIMESTAMP.txt
nuclei-dvwa-TIMESTAMP.txt
summary-TIMESTAMP.txt
Key Observation
Automated scanning did not necessarily identify all vulnerabilities that were discovered during manual testing.
For example, the previous manual assessment of OWASP Juice Shop identified issues such as SQL Injection, Cross-Site Scripting, and Broken Access Control.
This demonstrates that automated scanning provides fast and repeatable coverage, but manual security testing remains important for identifying application-specific and business logic vulnerabilities.
Skills Demonstrated
Vulnerability scanning
Service enumeration
Bash scripting
Security automation
Nmap
Nuclei
Docker
Report generation
Security documentation
Screenshots
Evidence of execution is available in:
screenshots/automated-scan.png
screenshots/scan-summary.png
Disclaimer
All scans were performed against intentionally vulnerable applications hosted locally for educational purposes.
Sekarang isi methodology.md:
Automated Vulnerability Assessment Methodology
Objective
The objective of this project was to automate basic vulnerability assessment tasks and generate repeatable security reports.
Environment
Platform:
macOS
Targets:
OWASP Juice Shop
DVWA
Deployment:
Local Docker containers
Tools:
Nmap
Nuclei
Bash# automated-vuln-scanning
