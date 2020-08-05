# 1. math 모듈의 모든 기능(함수)을 사용하는 경우

# import math
# print('파이값: {}'.format(math.pi))


# 2. math 모듈의 모든 기능(함수)을 사용하는 경우 : 별명을 사용

# import math as m
# print('파이값: {}'.format(m.pi))


# 3. math 모듈의 특정 기능(함수)만 사용하는 경우

# from math import pi
# print('파이값: {}'.format(pi))


# 4. math 모듈의 모든 기능(함수)을 사용하는 경우 : from 사용
from math import *
print('파이값: {}'.format(pi))
