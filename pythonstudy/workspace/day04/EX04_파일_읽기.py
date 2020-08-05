# 친구들.csv
# "에밀리",20
# "제임스",25
# "제시카",30
#
# friends = ['에밀리', 20, '제임스', 25, '제시카', 30]

filein = open('친구들.csv', mode='rt')
friends = []

while True:
    buffer = filein.readline()  # "에밀리",20\n
    if not buffer:
        break
    friend = buffer.split(',')  # friend = ['"에밀리"', '20\n']
    friend[0] = friend[0].strip('"')  # friend = ['에밀리', '20\n']
    friend[1] = int(friend[1].rstrip('\n'))  # friend = ['에밀리', 20]
    for i in range(len(friend)):
        friends.append(friend[i])
    # friends.append(friend[0])
    # friends.append(friend[1])

filein.close()

print(friends)
del friends

print('-' * 50)

filein = open('친구들.csv', mode='rt')
friends = []

buffers = filein.readlines()
# buffers = ['"에밀리",20\n', '"제임스",25\n', '"제시카",30\n']

for buffer in buffers:
    friend = buffer.split(',')  # friend = ['"에밀리"', '20\n']
    friend[0] = friend[0].strip('"')  # friend = ['에밀리', '20\n']
    friend[1] = int(friend[1].rstrip('\n'))  # friend = ['에밀리', 20]
    for i in range(len(friend)):
        friends.append(friend[i])

filein.close()

print(friends)
