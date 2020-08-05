from bs4 import BeautifulSoup
#1. >
#2. >=
#3. <
#4. <=
#5. ==
#6. !=

#7. and
#8. or
#9. not

#10참 if 조건식 else거짓
#자바(조건식 ? 참: 거짓)

#국,영,수 모두 80이상이거나 평균이 85이상이면 합격 아니면 불합격
kor,eng,mat = 85,80,90
ave =(kor+eng+mat)/3
isPassed = (kor >= 80 and eng >= 80 and mat >= 80) or (ave >=85)
print('합격' if isPassed else '불합격')

#국영수 최고점 찾기 max
max = (kor if(kor>eng) else eng)
max = (kor if(kor>mat) else mat)
max = (eng if(eng>mat) else mat)

maxi = kor if kor >=eng else eng
maxi = maxi if maxi >=mat else mat

print('가장큰수는',maxi,'이다')
print(max)

