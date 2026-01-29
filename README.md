# ansible_toolkit

[![license](https://img.shields.io/github/license/Scorpi-ON/ansible_toolkit)](https://opensource.org/licenses/MIT)
[![Python versions](https://img.shields.io/badge/python-3.14-blue)](https://python.org/)
[![release](https://img.shields.io/github/v/release/Scorpi-ON/ansible_toolkit?include_prereleases)](https://github.com/Scorpi-ON/ansible_toolkit/releases)
[![downloads](https://img.shields.io/github/downloads/Scorpi-ON/ansible_toolkit/total)](https://github.com/Scorpi-ON/ansible_toolkit/releases)
[![code size](https://img.shields.io/github/languages/code-size/Scorpi-ON/ansible_toolkit.svg)](https://github.com/Scorpi-ON/ansible_toolkit)

[![Ansible Lint & yamllint checks](https://github.com/Scorpi-ON/ansible_toolkit/actions/workflows/linters.yaml/badge.svg)](https://github.com/Scorpi-ON/ansible_toolkit/actions/workflows/linters.yaml)
[![CodeQL (GH Actions)](https://github.com/Scorpi-ON/ansible_toolkit/actions/workflows/codeql.yaml/badge.svg)](https://github.com/Scorpi-ON/ansible_toolkit/actions/workflows/codeql.yaml)

An Ansible [playbook set](./playbooks) for my personal needs: configuring WSL (Arch Linux) and a single VDS server (Ubuntu/Debian).

## What's inside
- [x] package installation and Docker setup
- [x] connection of AUR and Chaotic-AUR for Arch Linux
- [x] non-root user setup
- [x] Fish shell configs for the user
- [x] [Pay Respects](https://github.com/iffse/pay-respects) for user's shell (Fish or Bash)
- [x] client- and server-side SSH setup
- [x] ufw and Fail2Ban configs

## Installation and Usage

0. Clone the repository and enter its directory.

1. Install the uv package manager using one of the available methods. For example, on Linux/macOS:

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

You can also use the package provided by your distribution's package manager, if exists (e.g. for Arch Linux).

2. Install Ansible:

```shell
uv sync --no-dev
```

Then activate the `.venv` virtual environment.

You can also use Ansible packages provided by your distribution's package manager.

3. Install the project's Ansible dependencies:

```shell
ansible-galaxy install -r requirements.yaml
```

4. Create `inventory/group_vars/all/secrets.yaml` based on the [example](./inventory/group_vars/all/secrets.yaml.example).
5. Run playbooks with:

```shell
ansible-playbook -u root playbooks/<PLAYBOOK_FILE>  # if the user has not been created yet 
ansible-playbook playbooks/<PLAYBOOK_FILE> --ask-become-pass
```

## Development

1. Install the full dependency set:

```shell
uv sync
```

2. Install the pre-commit hook for linting Ansible and YAML files:

```shell
pre-commit install
```

3. To format code, run:

```shell
ansible-lint --fix
yamllint .
```
