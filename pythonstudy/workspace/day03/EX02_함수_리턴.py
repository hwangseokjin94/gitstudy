# 함수리턴은 return 문으로 처리한다.
# 함수리턴은 2개 이상이 가능하다.

#커피자판기
#함수명 : coffee_machine
#파라미터 : money (기게에 넣은돈)
#리턴 : coffee(커피수),change(잔돈)
#실행 ㅇㅖ)
#얼마를 넣을까요? >>>1000

#몇잔을 뽑을까요? >>3
#커피 3잔 잔돈은 100원입니ㅏㄷ.

def coffee_machine():
    money = int(input('얼마를 넣을까요?>>>>'))
    coffee = int(input('몇잔을 뽑을까요?>>>>'))
    if money< coffee * 300:
        print('불가능한주문입니다.')
        return 0,money
    else:
        change = money-(coffee*300)
        return print('커피{}잔:,잔돈{}입니다.'.format(coffee,change))

coffee_machine()

def score_handler(*numbers):
    if len(numbers) <= 1 :
        print('2개이상의 점수가 필요합니다.')
        return
    else:
        return sum(numbers), sum(numbers)/len(numbers) ,max(numbers),min(numbers)

#변수 4개를 이용해서 리턴 4개를받기
a,b,c,d = score_handler(50,55,60,65,70)
print('합계{}:,평군:{}:,최대{}:,최소{}:'.format(a,b,c,d))

# #튜플 1개로 리턴 4개를 받기
# result = score_handler(80,85,90,95,100) #result 는 튜플이다.
# msg=('합계,평군,최대,최소')
# for idx in range(len(msg)):
#     if idx == len(msg) - 1:
#         print('{}:{}'.format(msg[idx], result[idx]))
#     else:
#         print('{}:{}'.format(msg[idx], result[idx]) , end=',')
#
