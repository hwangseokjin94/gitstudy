import string

# 1. 대문자 : upper
print('python'.upper())

# 2. 소문자 : lower
print('PYTHON'.lower())

# 3. 수식 계산 : eval
print('1 + 2 * 3 = {}'.format(eval('1 + 2 * 3')))

# 4. 찾는 문자의 인덱스 반환 : find
print('python'.find('t'))  # 2

# 5. 문자열을 나눠서 리스트에 저장하고 그 리스트를 반환 : split
# 1) 공백 분리
# data = 'i am a boy'
# list = data.split()
# 2) 지정 문자 분리
# data = '번호,성명,나이,주소'
# list = data.split(',')
data = 'i am a boy'
my_list = data.split()
print(my_list)  # ['i', 'am', 'a', 'boy']

data = '번호,성명,나이,주소'
my_list = data.split(',')
print(my_list)  # ['번호', '성명', '나이', '주소']

# 6. 리스트 요소들을 합친 문자열을 반환 : join
# my_list = ['i', 'am', 'a', 'boy']
# data = ' '.join(my_list)
# my_list = ['번호', '성명', '나이', '주소']
# data = ','.join(my_list)
my_list = ['i', 'am', 'a', 'boy']
data = ' '.join(my_list)
print(data)

my_list = ['번호', '성명', '나이', '주소']
data = ','.join(my_list)
print(data)

# 7. 문자열의 길이 반환 : len
print(len('Hello'))  # 5

# 8. 기존 문자열을 새로운 문자열로 치환 : replace
s = 'Life is too short, You need python'
s = s.replace('short', 'long')  # short -> long
s = s.replace('python', 'java')  # python -> java
print(s)

# 9. 문자로만 구성된 문자열이면 True 반환 : isalpha
s1 = 'Hello'
s2 = 'python 3.8'
print(s1.isalpha())  # True
print(s2.isalpha())  # False

# 10. 숫자(0~9)로만 구성된 문자열이면 True 반환 : isdecimal
personal_id = '951215-1234567'
print(personal_id.isdecimal())  # False
print(personal_id.replace('-', '').isdecimal())  # True

# 11. 주어진 폭에 맞춰 왼쪽 정렬한 결과를 반환 : ljust
print('python'.ljust(10))  # python 6자 + 공백 4자
print('java'.ljust(10))  # java 4자 + 공백 6자
print('c++'.ljust(10))  # c++ 3자 + 공백 7자

personal_id = '951215-1234567'
print(personal_id[:8].ljust(14, '*'))  # 주민번호 8자 + '*' 6자

# 12. 주어진 폭에 맞춰 오른쪽 정렬한 결과를 반환 : rjust
# 13. 주어진 폭에 맞춰 가운데 정렬한 결과를 반환 : center

# 14. 왼쪽의 불필요한 문자를 제거한 결과를 반환 : lstrip
s1 = '      Hello'
s1 = s1.lstrip()  # 왼쪽의 모든 공백이 제거
print(s1)

s2 = '*****Hello'
s2 = s2.lstrip('*')
print(s2)

# 15. 오른쪽의 불필요한 문자를 제거한 결과를 반환 : rstrip

# 16. 양쪽의 불필요한 문자를 제거한 결과를 반환 : strip
s1 = '    Hello    '
s1 = s1.strip()
print(s1)

s2 = ',Hello!'
s2 = s2.strip(',!')
print(s2)

s3 = ',.?[]!@#$Hello^&*()-+='
s3 = s3.strip(string.punctuation)
print(s3)
