# Molecule Testing

## Installation

```bash
python3 -m venv ./molecule/venv
source ./molecule/venv/bin/activate
pip3 install -r ./molecule/requirements.txt
```

# Execution

Ubuntu:
```bash
# Ubuntu 25.10
MOLECULE_DISTRO=ubuntu2510 molecule test

# Ubuntu 24.04
MOLECULE_DISTRO=ubuntu2404 molecule test
```
