# Vagrant DietPi Box

Script to create a DietPi Vagrant Box.

DietPi version used is **DietPi_NativePC-BIOS-x86_64-Bullseye**.

You can find this box in [Vagrant cloud](https://app.vagrantup.com/aramcap/boxes/dietpi-bullseye) (https://app.vagrantup.com/aramcap/boxes/dietpi-bullseye).

Users:
 - user: root ; password: dietpi
 - user: vagrant ; only enabled access by identity file ; included in sudoers with nopasswd

## How up

```rb
Vagrant.configure("2") do |config|
  config.vm.box = "aramcap/dietpi-bullseye"
end
```

```sh
vagrant init aramcap/dietpi-bullseye
vagrant up
```

## Build

### Requirements

- wget
- 7za
- qemu-img
- guestmount / guestunmount
- tar

### Steps

If you have `make`:

```sh
make
```

If you don't have `make`:

```sh
bash build.sh
```

The box file is generated in `target` folder: `dietpi-bullseye.box`.

## Modifications

- DietPi license is auto accepted.
- DietPi locale is `C.UTF-8`.
- DietPi keyboard layout is `us`.
- DietPi timezone is `UTC`.
- DietPi SSH server is OpenSSH.
- DietPi logging mode is `rsyslog + logrotate`.
- DietPi autosetup: On first login, run update, initial setup and software installs without any user input.
- Base disk sized to 10GB.
- Added *vagrant* user with `vagrant insecure public key`.
- Added *vagrant* user to *sudoers* with `NOPASSWD`.
