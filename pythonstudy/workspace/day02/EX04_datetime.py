import datetime as dt

# 1. 날짜 만들기 : date(년, 월, 일)
today = dt.date(2020, 7, 30)
print(today)
print(type(today))

# 2. 현재 날짜/시간 반환 : datetime.now()
now = dt.datetime.now()
print(now)

# 3. 날짜/시간에서 원하는 데이터 추출
print('년도:{}'.format(now.year))
print('월:{}'.format(now.month))
print('일:{}'.format(now.day))
print('시:{}'.format(now.hour))
print('분:{}'.format(now.minute))
print('초:{}'.format(now.second))

print('날짜:{}'.format(now.date()))
print('시간:{}'.format(now.time()))
