DROP TABLE KORONA;
CREATE TABLE KORONA(
    KNO NUMBER PRIMARY KEY,
    KSUBNO NUMBER,
    KREGDATE DATE,
    KREGION VARCHAR2(20),
    KCONTENT VARCHAR2(200),
    KSUBCONTNENT VARCHAR2(200),
    KLATITUDE  VARCHAR2(20),
    KLONGITUDE VARCHAR2(20)
);

INSERT INTO KORONA(KNO,KREGDATE,KREGION,KCONTENT,KSUBCONTNENT,KLATITUDE,KLONGITUDE) VALUES(12931,'2020-07-02','부천','12230번 환자의 접촉자 (부천 복사골문화센터 어린이집)','코로나무섭','37.494673','126.754072');
INSERT INTO KORONA(KNO,KREGDATE,KREGION,KCONTENT,KSUBCONTNENT,KLATITUDE,KLONGITUDE) VALUES(13111,'2020-07-05','부천','12953번 환자의 접촉자 (카페테라스)','코로나무섭','37.519278','126.814563');

37.494673, 126.754072
