# **5G CORE NETWORK DEPLOYMENT**

---

##  *INFRASTRUCTURE SPECIFICATION*

* **OS** : `Ubuntu 22.04.5 LTS` (Running on 2 LXC Containers)
* **LXC ROLE** : `OPEN5GS-CORE` & `UE-GNB-SIM`
* **RESOURCE** : **3 Core CPU**, **5GB RAM**, **10GB Storage**
* **PLATFORM** : **Docker** & **Docker Compose**

---

##  **IMAGE SPECIFICATION (SDD SPEC)**
Semua *image* ditarik dari registry **ghcr.io/herlesupreeth/** menggunakan tag `:master`. Penamaan lokal (*tagging*) dilakukan untuk efisiensi konfigurasi.

### *A. Core & User Plane (5G/4G)*
* `docker_open5gs`: *Main Control Plane (AMF, SMF, AUSF, NRF, etc).*
* `docker_eupf`: *Enhanced User Plane Function (UPF) untuk pemrosesan data.*

### *B. RAN & Simulation*
* `docker_ueransim`: *Simulator UE dan gNodeB (5G) untuk testing end-to-end.*
* `docker_srsran`: *Software Radio Suite untuk akses jaringan 4G/5G.*
* `docker_srslte`: *Legacy Radio Suite untuk konektivitas LTE.*

### *C. Subscriber & Database Management*
* `docker_mysql`: *Database utama untuk penyimpanan data subscriber.*
* `docker_pyhss`: *Home Subscriber Server (HSS) berbasis Python.*
* `docker_osmohlr`: *Home Location Register untuk interop GSM/UMTS.*

### *D. IMS & Signaling*
* `docker_kamailio`: *SIP Server utama untuk layanan VoNR/VoLTE.*
* `docker_opensips`: *SIP Proxy dan signaling server modular.*
* `docker_osmomsc`: *Mobile Switching Center untuk signaling legacy.*
* `docker_osmoepdg`: *Evolved Packet Data Gateway (Interworking WiFi-to-Core).*

### *E. Monitoring, Charging & Misc*
* `docker_grafana`: *Dashboard visualisasi metrik dan statistik network.*
* `docker_metrics`: *Exporter untuk menarik data telemetry/performance.*
* `docker_ocs`: *Online Charging System untuk simulasi billing/kuota.*
* `docker_swu_client`: *SWu interface client untuk testing secure tunnels.*

---


## INITIAL SETUP (Pre-requisites)
* **REPOSITORY** : Ganti ke repo lokal Indonesia (misal: `Kartolo/Kambing`) untuk kecepatan akses.
* **PACKAGES** : Install `curl` & `git`
* **DOCKER** : Pastikan Docker Engine dan Compose sudah terpasang dan service-nya running.
---

## **AUTOMATION PULL IMAGE**
Untuk memastikan *environment* sesuai dengan **Spec**, jalankan skrip automasi berikut:

```bash
# Memberikan izin eksekusi pada skrip puller
chmod +x pull_image.sh

# Sinkronisasi spec ke lokal image
./pull_image.sh
```
---
## **CONECTIVITTY & STORAGE**

### *FOR 4G DEPLOYMENT :*
* *PORT*
