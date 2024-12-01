# https://adventofcode.com/2024/day/1
# CORRECT!
similarity_score = 0
left = []
right = {}
with open("input.txt", "r") as f_input:
    while True:
        try:
            i=0
            line = f_input.readline().split("   ")
            left.append(int(line[0]))
            if(int(line[1]) in right):
                right[int(line[1])]=right[int(line[1])]+1
            else:
                right[int(line[1])]=1
            i+=1
        except Exception as x:
            print(x)
            break


print(right.values())

for i in range(len(left)):
    if left[i] in right:
        similarity_score += left[i] * right[left[i]]

print(similarity_score)
