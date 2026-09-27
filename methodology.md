1. Target Preparation
Intentionally vulnerable applications were deployed locally using Docker.
2. Service Discovery
Nmap was used to identify exposed services and perform version detection.
3. Automated Vulnerability Scanning
Nuclei was used to test the web applications using community vulnerability templates.
4. Report Generation
Each scan produced timestamped output files.
Nmap and Nuclei results were then combined into a summary report.
5. Validation
Automated scan results were compared with vulnerabilities previously identified through manual testing.
6. Analysis
The results were reviewed to understand the strengths and limitations of automated vulnerability scanning.
Testing Limitations
This project does not represent a full penetration test.
The scanner is limited by the capabilities and templates provided by the configured tools.
Application-specific vulnerabilities and business logic issues may require manual testing.
Untuk remediation.md, project kedua agak beda karena kita bukan menemukan satu vulnerability spesifik saja. Jadi buat sebagai general remediation guidance:
Vulnerability Management and Remediation
