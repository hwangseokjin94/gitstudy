# for 문
# 1. 형식
#    for 변수 in 반복객체:
#        반복실행문
# 2. 반복객체
#    리스트, 튜플, 세트, 사전, 문자열, 정수집합(range)
# 3. 정수집합(range)
#    1) range(10)  :  0 ~ 9
#    2) range(1, 10)  :  1 ~ 9
#    3) range(1, 10, 2)  :  1, 3, 5, 7, 9

for a in [1, 2, 3]:
    print(a)

for b in (1, 2, 3):
    print(b)

for c in 'Hello':
    print(c)

for d in range(10):
    print(d)

my_list = [1, 2, 3, 4, 5]
for idx in range(len(my_list)):
    print(my_list[idx])

# 이름 따로, 나이 따로 출력
my_list = [('에밀리', 20), ('제임스', 25)]
for person in my_list:
    for p in person:
        print(p)
