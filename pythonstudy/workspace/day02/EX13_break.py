# 1 ~ 5 출력하기

n = 1
while True:
    print(n)
    n += 1
    if n > 5:
        break

# 퀴즈. 수도 맞추기

while True:
    city = input('수도가 어디입니까? >>> ')
    city = city.strip()
    if city == '서울' or city.lower() == 'seoul':
        print('정답')
        break
    else:
        print('오답')
