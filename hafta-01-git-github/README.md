
# Hafta 1 – Git ve GitHub

**Ders:** Web Programcılığı III
**Öğrenci:** [Arda KARATAŞ] – [256001046]

## 1. Araştırma

### Git nedir?
Git, kaynak kodundaki değişiklikleri takip eden dağıtık bir sürüm kontrol sistemidir. Bilgisayarda yerel olarak çalışır, internet gerektirmez. Dosyaların geçmişini tutar ve istenildiğinde eski bir sürüme dönmeyi sağlar.

### GitHub nedir?
GitHub, Git depolarını internette barındıran bir platformdur. Git'in üzerine Pull Request, Issue, GitHub Actions (CI/CD), GitHub Pages ve ekip yönetimi gibi iş birliği araçları ekler. Benzer platformlar: GitLab, Bitbucket.

### Git ile GitHub arasındaki fark
Git bir araçtır, GitHub ise bu aracı kullanan bir servistir. Git, GitHub olmadan kullanılabilir; GitHub ise Git olmadan çalışmaz. Git "motor", GitHub ise "bu motorun bulut üzerindeki ortak çalışma alanı"dır.

### Temel kavramlar

| Kavram | Açıklama |
|---|---|
| **Repository** | Projenin dosyalarını ve tüm değişiklik geçmişini tutan depo. Yerel (local) ve uzak (remote) olabilir. |
| **Commit** | Yapılan değişikliklerin bir mesajla kaydedilmiş anlık görüntüsü (snapshot). Her commit'in benzersiz bir hash değeri vardır. |
| **Branch** | Ana koddan ayrılan bağımsız geliştirme dalı. Yeni bir özellik, ana kodu bozmadan ayrı bir dalda geliştirilir. |
| **Merge** | Bir daldaki değişiklikleri başka bir dalla (genelde `main`) birleştirme işlemi. Aynı satırlar değiştirilmişse çakışma (conflict) oluşabilir. |
| **Clone** | Uzak bir repoyu tüm geçmişiyle birlikte bilgisayara kopyalama (`git clone <url>`). |
| **Pull** | Uzak repodaki yeni değişiklikleri çekip yerel dalla birleştirme (`git fetch` + `git merge`). |
| **Push** | Yerel commit'leri uzak repoya gönderme (`git push origin main`). |
| **.gitignore** | Git'in takip etmemesi gereken dosya ve klasörleri belirten dosya. Örneğin `node_modules/`, `.env` (şifreler), derleme çıktıları ve işletim sistemi dosyaları. Depoyu hafif tutar ve gizli bilgilerin sızmasını önler. |

### Temel komut akışı

```bash
git clone <url>                    # repoyu bilgisayara indir
git checkout -b yeni-ozellik       # yeni dal oluştur
git add .                          # değişiklikleri sahneye al
git commit -m "Giriş formu eklendi"
git push origin yeni-ozellik       # uzak repoya gönder
# GitHub'da Pull Request açılır ve merge edilir
```

### Hangi problemi çözer?
- Birden fazla kişinin aynı projede çakışmadan çalışmasını sağlar.
- Hatalı bir değişiklikte eski sürüme dönmeyi mümkün kılar.
- Kimin, neyi, ne zaman değiştirdiğini kayıt altında tutar.

### Avantajlar ve dezavantajlar
- **Avantajlar:** Ücretsiz, hızlı, dal (branch) yapısı güçlü, sektör standardı, iş birliğine uygun.
- **Dezavantajlar:** Başlangıçta öğrenme eğrisi var, merge çakışmaları kafa karıştırabilir, çok büyük ikili (binary) dosyalarla verimsiz çalışır.

### Alternatifler
Mercurial, Subversion (SVN) ve platform olarak GitLab, Bitbucket.

---

## 2. Sektör Araştırması


### Proje 1: Excalidraw

| Alan | Bilgi |
|---|---|
| **GitHub** | https://github.com/excalidraw/excalidraw |
| **Dil** | TypeScript (kod tabanının yaklaşık %94'ü), az miktarda SCSS ve JavaScript |
| **Framework** | React |
| **Amaç** | El çizimi görünümlü, tarayıcıda çalışan, gerçek zamanlı iş birliği ve uçtan uca şifreleme sunan açık kaynak sanal beyaz tahta |
| **Yaklaşık commit** | ~4.000 (inceleme sırasında 4.035) – [güncel sayı] |
| **Contributor** | [Repo sayfasındaki "Contributors" bölümünden yaz] |
| **Klasör yapısı** | Monorepo: `excalidraw-app/` (excalidraw.com uygulaması), `packages/` (npm paketleri), `examples/`, `public/`, `scripts/` – [kontrol et] |
| **README yapısı** | Tanıtım ve özellik listesi, hızlı başlangıç (npm kurulumu), katkı rehberi, entegrasyonlar, sponsorlar ve destek |

**Dikkat çeken noktalar:** Proje hem bağımsız bir uygulama hem de başka projelere eklenebilen bir npm paketi olarak sunuluyor. README'de kurulum ve katkı yönlendirmesi çok net.

### Proje 2: freeCodeCamp

| Alan | Bilgi |
|---|---|
| **GitHub** | https://github.com/freeCodeCamp/freeCodeCamp |
| **Dil** | JavaScript / TypeScript |
| **Framework** | React, Node.js (MongoDB) |
| **Amaç** | Ücretsiz kodlama eğitimi sunan platform |
| **Yaklaşık commit** | [repo sayfasından yaz] |
| **Contributor** | [repo sayfasından yaz] (çok büyük bir topluluk projesi) |
| **Klasör yapısı** | `client/` (ön yüz), `api/` (arka yüz), `curriculum/` (müfredat), `docs/`, `tools/`, `e2e/` – [kontrol et] |
| **README yapısı** | Kısa tanıtım ve katkı yönlendirmesi; ayrıntılar `docs/` ve CONTRIBUTING dosyasında |

**Dikkat çeken noktalar:** Ön yüz, arka yüz ve eğitim içeriğinin ayrı klasörlerde tutulması; katkı süreci için ayrıntılı dokümantasyon bulunması.

### Proje 3: Docusaurus (Meta)

| Alan | Bilgi |
|---|---|
| **GitHub** | https://github.com/facebook/docusaurus |
| **Dil** | TypeScript / JavaScript |
| **Framework** | React |
| **Amaç** | Dokümantasyon web siteleri oluşturmak için statik site oluşturucu |
| **Yaklaşık commit** | [repo sayfasından yaz] |
| **Contributor** | [repo sayfasından yaz] |
| **Klasör yapısı** | Monorepo: `packages/` (çekirdek ve eklentiler), `website/`, `examples/` – [kontrol et] |
| **README yapısı** | Tanıtım, kurulum, dokümantasyon bağlantıları, katkı ve lisans bilgisi |

**Dikkat çeken noktalar:** Eklenti tabanlı mimari ve geliştiricilerin kendi dokümantasyon sitesini hızlıca kurabilmesi.

### Genel değerlendirme
İncelenen üç projede ortak noktalar şunlardır:
- Üçü de React ve TypeScript/JavaScript tabanlı.
- Monorepo ve modüler klasör yapısı kullanılıyor.
- Hepsinde README, CONTRIBUTING ve lisans dosyası var; bu da açık kaynak katkısını kolaylaştırıyor.




# Akilli Gunes Takip ve Enerji izleme Sistemi

ESP32 tabanli, gunesi LDR sensorleriyle takip eden ve INA219 ile voltaj, 
akim ve guc olcumu yapan bir sistemdir.
Veriler Bluetooth ile Android uygulamasina aktarilir; 
uygulama canli grafik, gecmis analiz, alarm ve manuel kontrol sunar.

## Özellikler
- LDR ile otomatik gunes takibi ve servo motor surusu
- IINA219 ile voltaj / akim / guc olcumu
- Bluetooth (HC-05 / BLE) ile telemetri aktarimi
- Otomatik / manuel mod gecisi
- Yerel SQLite veritabani, gecmisveri analizi ve alarmlar

## Kullanilan Teknolojiler
| Katman | Teknoloji |
|---|---|
| Donanim | ESP32, INA219, LDR, servo motorlar |
| iletisim | Bluetooth (HC-05 / BLE) |
| Mobil | Android Studio, SQLite |

## Dokümantasyon
- [Use Case Diyagrami](docs/use-case-diyagrami.pdf)
- [ER Diyagrami](docs/er-diyagrami.pdf)
- [Proje Zaman Plani](docs/proje-zaman-plani.png)
- [Veritabani Semasi](database/schema.sql)

## Veritabani
Tablolar: `Users`, `Devices`, `TelemetryData`, `PanelPositionLogs`, `DeviceAlarms`

## Proje Takvimi (10 Hafta)
| Hafta | Asama |
|---|---|
| H1-H2 | Gereksinim analizi, mimari, ER diyagrami |
| H2-H3 | Use case, ESP32 / INA219 / LDR devre kurulumu |
| H3-H5 | uünes takip algoritmasi, Bluetooth protokolu |
| H5-H9 | Android arayuzleri, SQLite, grafikler, analiz |
| H9-H10 | Saha testleri, dokumantasyon, teslim |

## Kurulum
Proje gelistirme asamasindadir. Kurulum adimlari ilerleyen haftalarda eklenecektir.

## Gelistirici
Ad Soyad: Arda KARATAS  
Ogrenci No: 256001046


---

## Kaynaklar
- https://git-scm.com/doc
- https://docs.github.com
- Yukarıdaki üç projenin GitHub sayfaları,
- Yapay zeka desteği
-  www.youtube.com/watch?v=FMHPkdqN1axM&list=PL9eS3cByBEQyakhlEb5zOsoh_SO-N08eL