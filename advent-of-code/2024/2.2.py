# https://adventofcode.com/2024/day/2
# CORRECT
def test_line(line):
    this_is_safe=True
     # 1st 2 numbers
    if (line[0]  == line[1]):
        return False
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
    return this_is_safe
            

with open("input.txt", "r") as f_input:
    
    number_of_safe = 0
    last_number = 0
    while True:
            line = f_input.readline().split(" ")
            for i in range(len(line)):
                try:
                    line[i]=int(line[i])
                except:
                    line[i]=None

            print(line)
            if(line[0]==None):
                break
            
            this_is_safe=test_line(line)

            if(this_is_safe):
                number_of_safe+=1
            else:
                has_safe_combination=False
                unchanged_line=line
                for i in range(len(unchanged_line)):
                    line=unchanged_line.copy()
                    line.pop(i)
                    if(test_line(line)):
                        has_safe_combination=True
                
                if(has_safe_combination):
                    number_of_safe+=1
            

print(number_of_safe)
