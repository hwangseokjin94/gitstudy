# 은행계좌 클래스
# 1. 클래스 : Account
# 2. 메소드
#    1) 입금 : deposit  마이너스 입금 불가
#    2) 출금 : withdraw  마이너스 출금 불가, 잔액보다 큰 출금 불가
#    3) 이체 : transfer  출금 + 입금
#    4) 조회 : inquiry  계좌번호, 잔액 출력
# 3. 풀이
#    2 계좌 생성 후 이체 실행

class Account :
    def __init__(self,no,balance):
        self.__no = no
        self.__balance = balance

    def deposit(self,money):
        if money > 0 :
            self.__balance += money

    def withdraw(self,money):
        if money > 0 and money <= self.__balance:
           self.__balance -= money
           return money

        else:
            return 0

    def transfer(self,to,money):
        to.deposit(self.withdraw(money))

    def inquiry(self):
        print('계좌번호 : {},잔액 : {}원'.format(self.__no , self.__balance))


me = Account('111',10000)
you = Account('222',5000)

me.transfer(you,50)

me.inquiry()
you.inquiry()

me.transfer(you,100000)
me.inquiry()
you.inquiry() 