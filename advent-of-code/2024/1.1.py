# https://adventofcode.com/2024/day/1
# CORRECT!
difference = 0
left = []
right = []
with open("input.txt", "r") as f_input:
    while True:
        try:
            i=0
            line = f_input.readline().split("   ")
            left.append(int(line[0]))
            right.append(int(line[1]))
            i+=1
        except Exception as x:
            print(x)
            break


s_left = sorted(left)
s_right = sorted(right)

for i in range(len(s_left)):
    difference += abs(s_left[i]- s_right[i])

print(difference)