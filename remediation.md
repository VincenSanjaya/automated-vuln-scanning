This document describes the remediation process that should follow automated vulnerability scanning.
1. Validate Findings
Automated scanner results should not be treated as confirmed vulnerabilities immediately.
Each finding should be manually validated to reduce false positives.
2. Prioritize Findings
Findings should be prioritized based on factors such as:
Severity
Exploitability
Affected asset
Exposure
Business impact
3. Apply Remediation
Common remediation actions include:
Updating outdated software
Removing unnecessary services
Applying security patches
Fixing insecure configurations
Restricting network exposure
Applying strong access controls
4. Retest
After remediation, the affected target should be scanned again.
The goal is to verify that the issue is no longer detected.
5. Maintain Continuous Scanning
Automated scanning should be performed regularly to identify newly introduced vulnerabilities.
6. Combine Automation with Manual Testing
Automated scanners provide fast and repeatable coverage.
Manual testing remains important for vulnerabilities such as:
Business logic flaws
Broken access control
Authentication weaknesses
Complex injection issues
Application-specific vulnerabilities