# Akilli Gunea Takip ve Enerji izleme Sistemi

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