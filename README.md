# Atopile docker action

Atopile docker action with `ghcr.io/atopile/atopile-kicad` as a base image.


# Inputs

## `path`

Path to the [atopile](https://atopile.io/) project directory. Default `'.'`.

# Example usage

```yaml
steps:
  - name: Build atopile project
    uses: sethfischer/atopile-action/atopile-kicad@main
    with:
      path: 'pcb/'  # atopile project directory
```
