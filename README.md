This is a repo with config files for a linux setup with i3, st, tmux, nvim.

# Installation

Suggested installation with [gnu stow](https://www.gnu.org/software/stow/).
From your cloned directory execute:

```
stow -t ~ .
```

You can install dependencies and build st from source using [ansible](https://github.com/ansible/ansible).

```
ansible-playbook ansible/main.yml
```

For now elevate priviliges are needed.
