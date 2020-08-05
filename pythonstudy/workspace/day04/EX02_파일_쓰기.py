# with 문
# 1. close()를 생략할수있는 파일 스트림 처리 구문
# 2. 형식
#    with open (파일명 , 모드 ) as 파일스트림 :
#          파일스트림 처리


with open('친구들.csv', mode='wt') as fileout:
    # 3번 반복 for 문
    for i in range(3):
        name = input('이름 입력 >>> ')
        age = int(input('나이 입력 >>> '))
        fileout.write('"{}",{}\n'.format(name, age))




