with open('서울특별시_마포구_CCTV_20200520_1591235513709_283380.csv', 'rt') as filein:
    total_cctv = 0  # 전체 cctv 수
    purpose_set = set()  # 설치목적
    filein.readline()  # 파일의 첫 line 은 읽어서 저장하지 않고 버린다.
    while True:
        buffer = filein.readline()
        if not buffer:
            break
        place = buffer.split(',')
        total_cctv += int(place[4])  # cctv 누적
        purpose_set.add(place[3])  # 설치목적 추가 (set 구조는 중복 저장이 안 된다.)

print(total_cctv)
print(purpose_set)
