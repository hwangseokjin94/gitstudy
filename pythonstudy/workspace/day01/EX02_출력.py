# 리터럴(literal)

# 1.숫자 : 10,1.5
# 2.문자:'A',"A" ,'hello' ,"hello"
# 3.논리 True , False

print('Hello World')# 자동 줄바꿈 처리된다. println
# 1.end 속성
# print 후  출력할 문자열을 지정하는 속성
# end 속성을 생략하면 줄바꿈 처리된다.

print(10,end='-')
print(20,end='-')
print(30,end='-')

print()#줄바꿈
print('Hello World',end='')
print('word')

# 2.sep 속성
# 콤마로 분리된 출력물 사이에 삽입할 문자열을 지정하는 속성
# 생략하면 공백()이 삽입됨
print(10,20)#10 20
print(10,20,30,sep='-')# 10-20-30

