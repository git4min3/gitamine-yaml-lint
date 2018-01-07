# Yaml-lint Gitamine Plugin

## Requirements

* php >= 7.1
* yaml-lint (https://github.com/j13k/yaml-lint)
* Linux/Mac
* Gitamine

## Installation

```bash
gitamine install git4min3/gitamine-yaml-lint    
```

## Configuration

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    yaml-lint: ~    
```

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    yaml-lint:
      bin: bin/yaml-lint               #default yaml-lint    
```
