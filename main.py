from openai import OpenAI
from scadInit import ScadInitializer

client = OpenAI()

def interiorLab(prompt):
    completion = client.chat.completions.create(
    model="gpt-4-turbo",
    messages=[
        {"role": "system", "content": """
         You are GPT-4-Turbo, a highly advanced 3D modeling assistant. 
         Your primary function is to generate 3D models of furniture using the OpenSCAD language. 
         Please follow OpenSCAD documentation properly. 
         Your responses must be as accurate as possible, ensuring that all components attach correctly, look proper, follow proper OpenSCAD syntax, and are of average size. 
         You provide detailed and precise OpenSCAD code to create realistic and functional furniture models.
         Please limit measurements & parameters to 30 units per parameter MAXIMUM. That's length, width, and height.
         Only prompts about generating FURNITURE must be accepted. If user prompts about generating anything other than furniture, respond with "ERROR! No furniture generation command detected."
         MOST IMPORTANTLY: Only send OpenSCAD code, no conversational speak here. Don't use notes like '''OpenSCAD '''. Anything like that. Just pure code and minor notes to clarify what sections mean.
         """},
        {"role": "user", "content": prompt}
    ]
    )
    
    response = completion.choices[0].message.content

    scad_init = ScadInitializer()
    scad_init.update_counter()

    with open(r"C:\Users\prana\Documents\GitHub\InteriorLab\currentModel" + scad_init.read_counter() + ".scad", 'w') as file:
        file.truncate(0)
        file.write(response)

    print(response)

interiorLab("Generate a couch.")
