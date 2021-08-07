from time import sleep
from threading import Thread
class mutExec:
    def __init__(self):
        self.cs = 0
        self.pro = 0
        self.run = 5.0
        self.key = 'a'
        self.inp = False
        self.newInp = True
        self.time = 1
        print("Press a key except q to enter to CS.")
        print("Press q to exit.\n")
    def processStart(self):
        while(not self.inp):
            if not self.cs == 0:
                self.t2 = self.time
                if(self.t2-self.t1 > self.run):
                    print("Process ", self.pro-1)
                    print("Exit CS.")
                    self.cs = 0
                    if( self.key=='q' or self.key=='Q'):
                        break
                else:
                    print("Running process", self.pro-1)
                    print(self.t2-self.t1, "Times done of ", self.run)
            if(self.key!='q' and self.newInp):
                if(self.cs!=0):
                    print("Error Another process in CS")
                    print("Please......................")
                else:
                    print("Process ", self.pro)
                    print("Entered CS")
                    self.cs = 1
                    self.pro+=1
                    self.t1 = self.time
                    self.newInp=False
            self.time += 1
            sleep(5)
    def keypress(self):
        inp = input()
        if inp:
            self.inp = True
            self.key = inp
            self.newInp = True
    
    def runProgram(self):
        while(self.key!='q'):
            process = Thread(target=self.processStart)
            interrupt = Thread(target=self.keypress)
            self.inp = False
            process.start()
            interrupt.start()

            process.join()
            interrupt.join()

if __name__ == "__main__":
    main = mutExec()
    main.runProgram()
    