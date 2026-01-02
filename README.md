# NixOS configuration

## Install

```bash
cd /etc/nixos
sudo git clone https://github.com/wiemanboy/nixos.git /etc/nixos/nix/config
sudo chown -R $USER /etc/nixos/nix/config
```

Add desired config to `configuration.nix`

```nix
  imports =
    [
      ./nix/config/coding.nix
      ./nix/config/desktop.nix
      ./nix/config/gaming.nix
      ./nix/config/terminal.nix
    ];
```

## Building

```bash
sudo nixos-rebuild switch
```
