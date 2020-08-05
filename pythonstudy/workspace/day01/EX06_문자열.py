# 1. 여러 줄의 문자열 : 3개의 따옴표
sender = '''우편번호 12345
서울시 여의도구 여의도동
홍길동'''
print(sender)

# 2. 이스케이프 문자 : \n, \t
receiver = '우편번호 12345\n강원도 속초시 설악동\n홍길순'
print(receiver)

# 3. 문자열 포맷 코드
#   1) 문자열 : %s
#   2) 정  수 : %d
#   3) 실  수 : %f
zip_code = 12345
address = '우편번호 %d 서울시 마포구' % zip_code
print(address)

year = 1990
month = 10
day = 25
birthday = '%d년 %d월 %d일' % (year, month, day)
print(birthday)

# 4. format
score = '{}점'.format(85)
print(score)

regdate = '{}년 {}월 {}일'.format(2020, 7, 29)
print(regdate)

birthday = '{0}년 {1}월 {2}일'.format(1990, 10, 25)
print(birthday)

birthday = '{2}년 {1}월 {0}일'.format(25, 10, 1990)
print(birthday)

eye = '좌: {left}, 우: {right}'.format(left=1.0, right=1.2)
print(eye)

# 5. 문자열 연산자
#   1) + : 문자열 연결 (str 만 가능하다)
#   2) * : 문자열 반복
name = '뽀로로'
age = 15
print(name + '는 ' + str(age) + '살입니다.')

star = '★' * 5
print(star)

# 점수 10 ~ 100 , 10점당 '★' 출력하기
# score = 49, ★★★★
score = 49
star = '★' * (score // 10)
print(star)

# 크리스마스 트리 출력하기
#     *
#    ***
#   *****
#  *******
# *********
tree = '*'
space = ' '
print(space * 4 + tree * 1)
print(space * 3 + tree * 3)
print(space * 2 + tree * 5)
print(space * 1 + tree * 7)
print(space * 0 + tree * 9)
