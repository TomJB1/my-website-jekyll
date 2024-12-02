# https://adventofcode.com/2024/day/2
# CORRECT
number_of_safe = 0
last_number = 0
increasing = True
with open("input.txt", "r") as f_input:
    while True:
            this_is_safe=True
            line = f_input.readline().split(" ")
            for i in range(len(line)):
                try:
                    line[i]=int(line[i])
                except:
                    line[i]=None

            print(line)
            if(line[0]==None):
                break

            # 1st 2 numbers
            if (line[0]  == line[1]):
                next
            elif (line[0]>line[1]):
                increasing=False
            else:
                increasing=True
            
            for i in range(len(line)):
                if(i==len(line)-1):
                    break
                if (line[i] < line[i+1]):
                    #increasing
                    if(not increasing):
                        this_is_safe=False
                
                if (line[i] > line[i+1]):
                    #decreasing
                    if(increasing):
                        this_is_safe=False
                
                if (line[i] == line[i+1]):
                    #same
                    this_is_safe=False
                
                if (abs(line[i] - line[i+1])>3):
                    this_is_safe=False

            if(this_is_safe):
                number_of_safe+=1

print(number_of_safe)
