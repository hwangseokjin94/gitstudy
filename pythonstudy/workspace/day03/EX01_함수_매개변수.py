import random as rd
# 함수
# 1. 함수정의를 먼저한다.
# 2. 함수 호출을 나중에한다.
# 3. 함수정의
#   def(매개변수):
#   함수본문
# 4. 함수정의 위 아래 2개 의 blank line을 두도록 스타일 가이드를 한다.
# 1. 파라미터가 없는 함수


def say_hello():
    hi = ['안녕하세요','어서오세요','hello','반갑습니다.','안녕히가세요']
    # print(hi[rd.randint(0,4)]) # 0~4
    # print(hi[rd.randrange(5)]) # 0~4 확장이 용의
    print(hi[rd.randrange(len(hi))]) # 0~4 확장이 용의


say_hello()

# 2.파라미터가 있는 함수

# 1) 파라미터 개수가 정해진 함수
def adder(a,b):
    print('{}+{} = {}'.format(a,b,a+b))


adder(int(input('첩넌쨰정수>>>>')),int(input('두넌쨰정수>>>>')))

# 2) 파라미터 개수가 유동적인 함수

def average(*numbers): #*numbers는 튜플이다.
    if len(numbers) == 1:
        print('평균:{}'.format(numbers[0]))
    else:
        print('평균:{}'.format(sum(numbers) / len(numbers)))



average(1,2)
average(1,2,3)
average(1,2,3,4)

# 3. 디폴트 매개변수
# 디폴트 값 :기본값(파라미터가 전달되자않으면 사용하는 값)

def divider(a,b=1): #b=1 디폴트값 (b로 전달되는 파라미터가 없을때 사용)
    print('{}/{} = {}'.format(a,b,a/b))


divider(7,2)
