# TODO: Change this to look like powershell admin user

# Terminate the Ubuntu distribution
wsl --terminate Ubuntu

# Export the Ubuntu distribution to a backup file
wsl --export Ubuntu C:\path\to\backup.tar

# Unregister the Ubuntu distribution
wsl --unregister Ubuntu

# Import the Ubuntu distribution from the backup file to a new install location
wsl --import Ubuntu C:\path\to\new\install\ C:\path\to\backup.tar
