# 1. 문자열 인덱싱
# 문자열 :  H  e  l  l  o
# 인덱스 :  0  1  2  3  4
# 인덱스 : -5 -4 -3 -2 -1
s = 'Hello'
print(s[0], s[-5])

# 2. 문자열 슬라이싱
# 문자열[시작:종료:단계]
#   1) 시작 : 시작 이상 (시작을 포함), 생략하면 처음부터 추출
#   2) 종료 : 종료 미만 (종료를 불포함), 생략하면 끝까지 추출
#   3) 단계 : 생략 시 1 씩 증가
s = 'Hello World'

print(s[0:5])  # Hello
print(s[6:11])  # World

print(s[:5])  # Hello
print(s[6:])  # World

print(s[-5:])  # World


# 학번 분리
# stu_no = '31025'
# 3학년 10반 25번

stu_no = '31025'
print('{}학년 {}반 {}번'.format(stu_no[0], stu_no[1:3], stu_no[-2:]))
