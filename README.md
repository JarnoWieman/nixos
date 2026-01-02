# NixOS configuration

## Install

Clone the git repo to `/etc/nixos/nix`:

```bash
cd /etc/nixos
sudo git clone https://github.com/wiemanboy/nixos.git /etc/nixos/nix
sudo chown -R $USER /etc/nixos/nix
```

Add desired config to `configuration.nix`:

```nix
  imports =
    [
      ./nix/config/global.nix

      ./nix/config/coding.nix
      ./nix/config/terminal.nix
      ./nix/config/tools.nix

      ./nix/config/desktop.nix
      ./nix/config/gaming.nix
    ];
```

## Building

Build the packages using the nixos rebuild command:

```bash
sudo nixos-rebuild switch
```
