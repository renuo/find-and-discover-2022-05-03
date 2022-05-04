# Find and discover May 2022

## Josua

About Ferrum, Cuprite, Mechanize & Vessel

* [Ferrum](https://github.com/rubycdp/ferrum) is a high level CDP (Chrome DevTools Protocol) 
  API to control the Chrome browser
* [Cuprite](https://github.com/rubycdp/cuprite) is a Chrome headless driver for
  [_Capybara_](https://github.com/teamcapybara/capybara) using _Ferrum_
* [Mechanize](https://github.com/sparklemotion/mechanize) is a website interaction library
* [Vessel](https://github.com/rubycdp/vessel) is a crawling framework (uses _Ferrum_ and _Mechanize_)

Run the _Cuprite_ and _Vessel_ examples:

```
cd josua
bundle install
ruby ./cuprite.rb
ruby ./vessel.rb
```

## Raphael

About IHP

 * Heard of it on https://news.ycombinator.com/item?id=31247149
 * https://ihp.digitallyinduced.com/
 * https://github.com/digitallyinduced/ihp

Haskell web framework: The Rails/Django for Haskell

### Installing Nix

```
pacman -S nix
sudo usermod -a -G nix-users $USER
newgrp nix-users
sudo systemctl start nix-daemon.service
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
```

### Creating the IHP env

```
nix-env -f https://downloads.digitallyinduced.com/ihp-new.tar.gz -i ihp-new
```

### Creating the project

```
ihp-new blog
```

Tool will run for ~15min


### Problems

1. ```
   error: file 'nixpkgs' was not found in the Nix search path (add it using $NIX_PATH or -I)
   ```
   Didn't do the `nix-channel --add` / `--update`. Also may need to logout / log-in

2. I got an error during `ipc-new blog` which I needed to solve with:
   ```
   echo "trusted-users = root raphael" | sudo tee -a /etc/nix/nix.conf
   ```
