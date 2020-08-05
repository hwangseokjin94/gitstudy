# 리스트 : 배열
# 1. 인덱싱과 슬라이싱을 지원한다.
# 2. [] 로 묶는다.
# 3. 모든 타입의 요소를 섞어서 저장할 수 있다.

exam = []  # 빈 리스트

exam.append(50)  # 마지막에 추가
exam.append(60)  # 마지막에 추가
exam.insert(0, 40)  # 인덱스 0에 추가

print(exam)

exam.pop()  # 마지막 요소를 제거
exam.pop(0)  # 인덱스 0 요소를 제거

print(exam)
