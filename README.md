# Brodmann Areas 3D Viewer

Interactive 3D visualization of Brodmann brain areas with detailed information about each region, including anatomical location, function, EEG band-pass characteristics, and clinical significance.

![Brodmann Areas 3D Viewer](screenshot.png)

## Features

- **Interactive 3D Model**: Click and explore 80 different Brodmann areas
- **Detailed Information**: View comprehensive data for each brain region
- **EEG Band-Pass Analysis**: Delta, Theta, Alpha, Beta, and Gamma wave characteristics
- **Clinical Relevance**: Understanding lesions and their effects
- **Anatomical Reference**: XYZ axis visualization for spatial orientation

## Usage

### Online Version

Visit: [https://nulla1202.github.io/brodmann-3d-viewer/]

### Local Development

1. Start a local HTTP server:
   ```bash
   python3 -m http.server 8000
   ```

2. Open in browser:
   ```
   http://localhost:8000/index.html
   ```

### Controls

- **Left Mouse**: Rotate the brain model
- **Right Mouse**: Pan (move) the view
- **Mouse Wheel**: Zoom in/out
- **Click on a region**: View detailed information

## Data Structure

```
threejs/
├── index.html              # Main application
├── BA_v2.glb              # 3D brain model (80 Brodmann areas)
└── data/
    └── regions/           # JSON files for each brain region
        ├── Brodmannniigz_1.json
        ├── Brodmannniigz_2.json
        └── ...
```

### Region Data Format

Each JSON file contains:
- **name**: Brodmann area name
- **ba_label**: BA number (e.g., BA1, BA44)
- **location**: Anatomical position
- **function**: Primary functions
- **band_pass_characteristics**: EEG frequency band data
  - Delta (0.5-4 Hz)
  - Theta (4-8 Hz)
  - Alpha (8-13 Hz)
  - Beta (13-30 Hz)
  - Gamma (30-100+ Hz)
- **connections**: Connected brain regions
- **connectivity_pattern**: Detailed connectivity information
- **clinical_significance**: Effects of lesions

## Technology Stack

- **Three.js**: 3D rendering engine
- **GLTFLoader**: 3D model loading
- **OrbitControls**: Camera control
- **Vanilla JavaScript**: No framework dependencies

## Browser Support

- Chrome/Edge: ✅ Fully supported
- Firefox: ✅ Fully supported
- Safari: ✅ Fully supported
- Mobile browsers: ⚠️ Limited (3D model may be slow)

## File Size

- Total: ~30 MB
- Main model (BA_v2.glb): ~28 MB
- Region data: ~200 KB

## Future Features

- [ ] Multi-region selection
- [ ] Relationship analysis between regions
- [ ] Functional connectivity visualization
- [ ] Export region information
- [ ] Search functionality
- [ ] Language switching (English/Japanese)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Data Sources

Based on research from:
- Brodmann's original cytoarchitectonic studies
- Modern neuroimaging research
- EEG frequency band analysis literature
- Clinical neuropsychology databases

## License

[Your license here]

## Citation

If you use this tool in your research, please cite:

```
[Your citation format]
```

## Contact

[Your contact information]

---

**Note**: This is an educational tool. For clinical decisions, always consult with qualified medical professionals.
