# 입력 함수
# input()
# input('입력메시지')
# 모든 입력은 str 타입으로 저장된다.

a = input('뭐든지 입력해 주세요 >>> ')
print('입력결과: {}'.format(a))
print('입력타입: {}'.format(type(a)))

# 1. 정수를 입력받는 방법
# b = input('정수를 입력하세요 >>> ')
# b = int(b)
b = int(input('정수를 입력하세요 >>> '))
print('입력 값: {0}, 입력 타입: {1}'.format(b, type(b)))

# 2. 실수를 입력받는 방법
c = float(input('실수를 입력하세요 >>> '))
print('입력 값: {0}, 입력 타입: {1}'.format(c, type(c)))

# 이름, 나이, 키, 몸무게 입력 받아 출력하기
name = input('이름? >>> ')
age = int(input('나이? >>> '))
height = float(input('키? >>> '))
weight = float(input('몸무게? >>> '))
print('이름:{}, 나이:{}살, 키:{}cm, 몸무게:{}kg'.format(name, age, height, weight))
