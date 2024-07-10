import subprocess
import os

def scad_to_stl(scad_file, stl_file, openscad_path):
    """
    Convert a .scad file to a .stl file using OpenSCAD.

    :param scad_file: Path to the input .scad file.
    :param stl_file: Path to the output .stl file.
    :param openscad_path: Full path to the OpenSCAD executable.
    """
    # Check if OpenSCAD is installed
    if not os.path.isfile(openscad_path):
        raise EnvironmentError(f"OpenSCAD is not found at {openscad_path}")
    
    # Run the OpenSCAD CLI command
    command = [openscad_path, "-o", stl_file, scad_file]
    result = subprocess.run(command, capture_output=True, text=True)
    
    if result.returncode != 0:
        print(f"Error: {result.stderr}")
    else:
        print(f"Successfully converted {scad_file} to {stl_file}")

# Files to convert
scad_file = r"C:\Users\prana\Documents\GitHub\InteriorLab\currentModel.scad"
stl_file = r"C:\Users\prana\Documents\GitHub\InteriorLab\currentModel.stl"
openscad_path = r"C:\\Program Files\\OpenSCAD\\openscad.exe"  # Update this path

# Convert .scad to .stl
scad_to_stl(scad_file, stl_file, openscad_path)