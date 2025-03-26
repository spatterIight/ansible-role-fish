# ansible-role-tinc

## What it is

Installs and configures a [Garuda linux](https://garudalinux.org/) style [Fish shell](https://fishshell.com/) on Ubuntu 24.

## Features

1. Configuration of [skel](https://www.linuxhowtos.org/Tips%20and%20Tricks/using_skel.htm), such that all users created in the future are pre-configured
2. A Systemd service to automatically update completions
3. The fish [done](https://github.com/franciscolourenco/done) plugin, which automatically sends you a desktop notification when long processes finish
4. The intelligent [McFly](https://github.com/cantino/mcfly) shell history search engine
5. The [Starship](https://starship.rs/) prompt
6. The fish [autopair](https://github.com/jorgebucaran/autopair.fish) plugin, which automatically completes `()`, `[]`, `{}`, `""`, and `''`
7. Ability to set users default shell to fish
8. Configure existing users with all of the above ^

## Configuration

A basic configuration of this role might look something like this:

```yaml
fish_setup_skel: true
fish_setup_update_completions_service: false
fish_setup_done: true
fish_setup_mcfly: false
fish_setup_starship: true
fish_setup_autopair: true
fish_setup_users_default_shell: true

fish_configure_users:
  - ubuntu
```

## Running the role locally

To run the role locally, without much hassle, an playbook in the files directory can be used with the following command:

```sh
ansible-playbook -i "localhost," ./files/playbook.yml --ask-become-pass
```
