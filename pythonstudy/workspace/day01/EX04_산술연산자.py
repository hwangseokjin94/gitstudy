#1.+
#2.-
#3.*
#4.**:제곱
#5./:나누기 (7/2==3.5)
#6.//: 몫(7/2==3)
#7.%: 나머지(7/2==1)
#8.+=
#9.-=
#10. *=
#11. **=
#12. /=
#13. //=
#14. %=
#15. =
a =10
a += 10
print(a)

#2개 이상의 동시 대입이 가능하다.
left , right = 10 ,20
print(left,right)
print(left+right)
#자바
temp = left
left = right
right = temp
print(left,right)
#파이썬의교환
left ,right = right,left
print(left,right)
