0x19. Postmortem

Issue Summary

On March 5, 2025, from 10:00 AM to 10:15 AM WAT, our website displayed a 404 Not Found error, preventing users from accessing the homepage. Approximately 80% of visitors were affected during this period.
The root cause was an accidental deletion of the index.html file from the web server.

Timeline
•	10:00 AM UTC - A user reported that the homepage was missing.

•	10:02 AM UTC - Engineers verified the issue through server logs and user reports.

•	10:05 AM UTC - Checked the web server directory and found that index.html was missing.

•	10:07 AM UTC - Assumed a server update might have removed the file; investigated recent changes.

•	10:10 AM UTC - Realized the file had been manually deleted by mistake.

•	10:11 AM UTC - Escalated to the DevOps team to restore the missing file.

•	10:12 AM UTC - Restored the index.html file from a backup.

•	10:14 AM UTC - Confirmed file permissions and tested homepage accessibility.

•	10:15 AM UTC - Website fully restored.

Root Cause and Resolution

The issue was caused by an accidental deletion of the index.html file, which is essential for displaying the homepage.

To fix the issue:

1.	Engineers restored the missing index.html file from the latest backup.

2.	Permissions were checked to ensure the file was accessible.

3.	A verification test confirmed that the homepage was working again.

Corrective and Preventative Measures

To prevent similar issues in the future, we will:

•	Enable File Protection - Implement a safeguard to prevent accidental deletion of critical files.

•	Improve Backup Processes - Ensure automatic backups are taken daily.

•	Enhance Monitoring - Set up an alert system to notify engineers if essential files are missing.

•	Train Engineers - Provide guidelines on handling critical web files safely.

