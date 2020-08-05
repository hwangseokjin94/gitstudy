# 읽기 메소드
# 1. read()
#    (1)read() :전체읽기
#    (2)read(n):지정된 글자수(n)만큼 읽기

# 2. readline() :  한줄읽기
# 3. readlines() :전체 읽기, 한줄당 리스트의 한요소로 저장

#1. 전체 한번에 읽기
filein = open('자기소개.txt',mode='rt')
buffer = filein.read()
print(buffer)
print('-'*50)
filein.close()

#2. n글자씩읽기
filein = open('자기소개.txt',mode='rt')
while True:
    buffer = filein.read(2)
    if not buffer:
        break
    print(buffer,end='')#end=''(자동 줄바꿈 방치
    
filein.close()

