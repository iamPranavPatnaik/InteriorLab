import subprocess

def convert_scad_to_stl(scad_file, stl_file):
    # Command to run OpenSCAD with input and output files
    command = ['openscad', '-o', stl_file, scad_file]
    try:
        # Run the command
        subprocess.run(command, check=True)
        print(f"Successfully converted {scad_file} to {stl_file}")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e}")

scad_file = r'C:\Users\prana\Documents\GitHub\InteriorLab\currentModel.scad'
stl_file = r'C:\Users\prana\Documents\GitHub\InteriorLab\currentModel.stl'
convert_scad_to_stl(scad_file, stl_file)