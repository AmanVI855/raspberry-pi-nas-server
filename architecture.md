# Architecture

This project uses a Raspberry Pi as a NAS server.

## Components

- Raspberry Pi (host machine)
- External Storage (USB drive)
- Samba (file sharing service)
- Client devices (laptop, mobile)

## Flow

Client Device → Network → Samba Service → Mounted Storage

## Explanation

The Raspberry Pi runs Samba, which exposes a shared directory over the network.  
External storage is mounted to this directory and accessed remotely by clients.
