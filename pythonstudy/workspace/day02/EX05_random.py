import random as rd

# 1. 정수 발생
r1 = rd.randint(0, 9)  # 0 ~ 9 사이
r2 = rd.randrange(10)  # 0 ~ 9 사이
r3 = rd.randrange(0, 9, 2)  # 0 ~ 9 사이 짝수

# 2. 실수 발생
r4 = rd.random()  # 0 ~ 1 사이 (확률 처리)
r5 = rd.uniform(0, 9.9)  # 0 ~ 9.9 사이

# 3. 리스트 관련
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
r6 = rd.sample(my_list, 2)  # my_list 에서 2개

your_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
rd.shuffle(your_list)  # your_list 섞기

print(r1)
print(r2)
print(r3)
print(r4)
print(r5)
print(r6)
print(your_list)
