# Koyeb RDP - simple RDP access (admin/Admin@123!)

## What this does
- Builds Ubuntu 22.04 with XFCE desktop and xrdp.
- Creates an `admin` user with password `Admin@123!` (change immediately).
- Exposes RDP on TCP port 3389.

## Deploy on Koyeb (steps)
1. Create a new **public** GitHub repo and push this `Dockerfile` + `README.md`.
2. On Koyeb: Create App → Connect GitHub → select your repo.
3. Branch: `main` (or `master`)
4. Service port: **3389**
5. Deploy.

When running, Koyeb will provide a hostname (e.g. `yourapp.koyeb.app`).  
Use Remote Desktop client:

- Host: `yourapp.koyeb.app:3389`
- Username: `admin`
- Password: `Admin@123!`

**Change password after first login:**  
Run `passwd` in terminal inside the RDP session.

## If RDP TCP is blocked on Koyeb
Koyeb sometimes blocks raw TCP ports—if RDP doesn't connect, use the web-VNC alternative image `dorowu/ubuntu-desktop-lxde-vnc` and expose port 6080.

## Security
- This setup is for testing/dev only. Do NOT expose long-term with default password.
- Change password and restrict access as needed.
