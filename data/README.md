# Brodmann Area Data Files

This directory contains JSON files with detailed information about each Brodmann area.

## Directory Structure

```
data/
└── regions/
    ├── Brodmannniigz_1.json
    ├── Brodmannniigz_2.json
    ├── Brodmannniigz_3.json
    └── ... (one file per region)
```

## JSON File Format

Each region file follows this schema:

```json
{
  "id": "Brodmannniigz_X",
  "name": "Brodmann Area X",
  "description": "Brief description of the area",
  "location": "Anatomical location in the brain",
  "function": "Primary functional role",
  "connections": ["List", "of", "connected", "regions"],
  "clinical_significance": "What happens if this area is damaged",
  "vertices": 12345
}
```

## Adding New Regions

To add information for a new region:

1. Create a new JSON file named `{region_name}.json` in the `regions/` directory
2. The filename must exactly match the mesh name in the GLB file
3. Follow the JSON schema shown above
4. The data will be automatically loaded when the region is clicked

## Example Files

Currently, demo data is available for:
- Brodmannniigz_1
- Brodmannniigz_2
- Brodmannniigz_3
- Brodmannniigz_4
- Brodmannniigz_16

Other regions will show an error message until their data files are created.
