from tkinter import *

# root = Tk()
# root.title('InteriorLAB')
# root.iconbitmap("interiorLABicon.ico")

BG = "#AAAAAA"
FG = "#C4C4C4"
TEXT = "#EDE8E7"

FONT = "Helvetica 14"
FONT_BOLD = "Helvetica 13 bold"


class GUI:
    def __init__(self):
        self.window = Tk()
        self._setup_main_window()
    
    def run(self):
        self.window.mainloop()
        

    def _setup_main_window(self):
        self.window.title("InteriorLAB")
        self.window.iconbitmap("interiorLABicon.ico")
        self.window.resizable(width=False, height=False)
        self.window.configure(width=500, height=550, bg=BG)

        # title
        head_label = Label(self.window, bg=BG, fg=TEXT, text="Welcome", font=FONT_BOLD, pady=10)
        head_label.place(relwidth=1)

        # divider
        line = Label(self.window, width=450, bg=BG)
        line.place(relwidth=1, rely=0.07, relheight=0.01)

        # text
        self.text_widget = Text(self.window, width=20, height=2, bg=BG, fg=TEXT, font=FONT, padx=5, pady=5)
        self.text_widget.place(relheight=0.75, relwidth=1, rely=0.08)
        self.text_widget.configure(cursor='arrow', state=DISABLED)

        # scroll 
        scrollbar = Scrollbar(self.text_widget)
        scrollbar.place(relheight=1, relx=0.97)
        scrollbar.configure(command=self.text_widget.yview)

        # bottom label
        bottom_label = Label(self.window, bg=BG, height=80)
        bottom_label.place(relwidth=1, rely=0.8)

        # msg entry box
        self.msg_entry = Entry(bottom_label, bg="#000000", fg=TEXT, font=FONT)
        self.msg_entry.place(relwidth=0.75, relheight=0.06, rely=0.008, relx=0.011)
        self.msg_entry.focus()
        self.msg_entry.bind("<Return>", self._on_enter_pressed)

        # send button
        send_button = Button(bottom_label, text="Send", font=FONT_BOLD, width=20, bg=BG, command=lambda: self._on_enter_pressed(None))
        send_button.place(relx=0.77, rely=0.008, relheight=0.06, relwidth=0.22)

    def _on_enter_pressed(self, event):
        msg = self.msg_entry.get()
        self._insert_message(msg, "You")

    def _insert_message(self, msg, sender):
        if not msg:
            return
        
        self.msg_entry.delete(0, END)
        msg1 = f"{sender}: {msg}"

        self.text_widget.configure(state=NORMAL)
        self.text_widget.insert(END, msg1)
        self.text_widget.configure(state=DISABLED)



if __name__ == "__main__":
    gui = GUI()
    gui.run()
