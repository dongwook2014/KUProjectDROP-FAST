# DDoS 방어를 위한 Docker 기반 DROP-FAST

This project is Dongwook Lee's Korea University Graduation Project


## Summery

본 논문에서는 기존에 연구된 DROP-FAST의 고도화를 위한 연구를 진행하였으며, DROP-FAST의 트래픽 분산을 통해 호스트 서버의 가용성을 보장하고 Docker를 통한 Replica 서버의 생성 및 구동을 보다 효율적으로 관리하고자 한다. 실험을 통하여 DROP-FAST의 트래픽 분산 성능을 검증하였으며, Docker를 활용한 DROP-FAST는 기준에 개발된 DROP-FAST와 동일한 성능을 보였으며, Docker Swarm을 통한 replica 서버들 간 오케스트레이션의 편의성을 제공한다. 더 나아가, 기존의 연구에서 제시한 main 서버와 replica 서버간 동기화, IP 기반 공격 대응과 TTL 설정 문제를 효과적으로 해결할 수 있는 것으로 나타났다.

### Files

This repository includes the following files 

```
보고서 원본
포스터 원본
데모 영상
docker 소스코드
iptables & ipset rules
```
### Docker app
Docker 서버에 올라가는 app을 다운받기 위해서는 다음과 같은 방법으로 pull 을 할 수 있다.

main Server
```
docker pull dongwook2014/drop:main
```

replica Server
```
docker pull dongwook2014/drop:test
```

## Acknowledgments

* 본 연구를 위해 아낌없는 지도를 해주신 고려대학교 CCSLab의 이희조 교수님께 감사드립니다.
