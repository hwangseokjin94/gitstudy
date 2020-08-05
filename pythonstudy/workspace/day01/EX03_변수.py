
# 1.자료형 있다 하지만 선언하지 않는다.
# 2. 키워드 이외의 변수가 입력되면 스스로 변수로 인식한다.
# 3. 변수에 최초 저장되는 값에 의해 자료형이 결정된다.
# 4. 값이 저장되지 않은 변수는 사용할수 없다.
# 5. 작명규칙을 Camel Case 대신 언더스코어(_)를 활용한다.(관례,파이썬 코딩 스타일 가이드)
# myAge -> my_age

#
a = 10
print(type(a),a,sep=':')
b = 1.5
print(type(b),b,sep=':')
c = 'Hello'
print(type(c),c,sep=':')
d = True
print(type(d),d,sep=':')

# 캐스팅
aa = int(9.99) ##실수를 정수로 캐스팅
bb = float (9) # 정수를 실수로 캬스팅
cc = str (9.99) # 실수를 문자로 캐스팅
dd = str (9) # 정수를 문자로 캐스팅
ee = bool(0) # 0은 False
ff = bool(1) # 0 이아니면  True

print(aa,bb,cc,dd,ee,ff)
