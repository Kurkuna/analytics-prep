# Задача 1
a = [int(i) for i in input().split()]
print(sum(a))
# Задача 2
a = [int(i) for i in input().split()]
b = []
if (len(a) == 1):
    print(a[0])
else:
    for i in range(len(a)):
        if i == 0:
            b.append(a[1] + a[-1])
        elif i == len(a) - 1:
            b.append(a[0] + a[-2])
        else:
            b.append(a[i - 1] + a[i + 1])

    for i in b:
        print(i, end=' ')
# Задача 3
a = [int(i) for i in input().split()]
a = sorted(a)
b = []
for i in a:
    if(i not in b) and a.count(i)>1: b.append(i)
print(*b)