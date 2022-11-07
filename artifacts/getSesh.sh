#! /bin/bash

# ICS Deconstruction... Easy Get Session Data... 

# request to get the role. 
mdrole=$(curl http://169.254.169.254/latest/meta-data/iam/security-credentials/)

# request to get the session token for the given role. 
curl http://169.254.169.254/latest/meta-data/iam/security-credentials/$mdrole --output ./ics-decon-s3-creds.json

echo "[i] Creds are ready for $mdrole, look for ics-decon-s3-creds.json in your $CWD"
echo "[!] Use them wisely.. great power vs. responsibility and all that. 

