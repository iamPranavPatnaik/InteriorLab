from openai import OpenAI

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
         MOST IMPORTANTLY: Only send OpenSCAD code, no conversational speak here. Don't use notes like '''openscad '''. Anything like that. Just pure code and minor notes to clarify what sections mean.
         """},
        {"role": "user", "content": prompt}
    ]
    )
    
    response = completion.choices[0].message.content

    print(response)

interiorLab("Generate a treadmill.")
