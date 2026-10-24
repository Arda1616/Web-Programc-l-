OOP hangi problemi çözer?

Prosedürel programlamada veri ve veriyi işleyen fonksiyonlar ayrı yaşar. Proje büyüdükçe "bu veriyi kim, nerede değiştiriyor?" sorusu cevaplanamaz hâle gelir.

OOP, veriyi ve o veriyle ilgili davranışı aynı yerde toplayarak

büyük sistemleri küçük, bağımsız, anlaşılır parçalara bölmeyi amaçlar.

1. Sınıf (Class) ve Nesne (Object)

Günlük hayat: Bir ev planı (sınıf) ile o plana göre yapılmış gerçek evler (nesneler). Plan tektir, ev

sayısı sınırsızdır; her evin rengi ve sakini farklıdır.

Çözdüğü problem: Aynı yapıdaki yüzlerce varlık için kod tekrarını önler. Kütüphane projesinde

Kitap, Uye, Odunc birer sınıftır.

2. Constructor ve nesne oluşturma mantığı

Günlük hayat: Hesap açarken kimlik bilgisi vermeden hesap açılamaz. Constructor da zorunlu bilgileri baştan ister.

Arka planda ne olur? new bellekte yer ayırır, alanlara varsayılan değer verir,

sonra constructor'ı çalıştırır. Constructor yazmazsanız derleyici parametresiz boş bir tane ekler.

Çözdüğü problem: "Yarım yamalak nesne" hatalarını engeller.

Boş bir Siparis nesnesi yaratıp sonra alanlarını tek tek doldurmayı unutmak gibi karşılaşabileceğimiz sorunları önler.

yemek sepetinde bize sunduğu promosyonları seçmeden şipariş vermeyiz herhangi bir seçim

yapmdan siparişi vermeyiz.


3. Access Modifiers (Erişim belirleyiciler)

Günlük hayat: Bir restoranda menü herkese açıktır (public),

mutfağa sadece çalışanlar girer (protected gibi),

kasaya sadece müdür girer (private).

4. Encapsulation (Kapsülleme)

Kullanıcıyı veya sistemi belli bir alan içerisinde tutmaya yarar; veriyi korur. Klimanızın motor ayarına elinizle müdahale edemezsiniz; kumandadaki tuşların izin verdiği 16-30 aralığında işlem

yapabiliriz.

--Güvenlik kilidi gibi, bir ilaç kutusundaki ilacın miligramını değiştiremezsiniz; onlar zaten hazırdır.

Veriyi saklamak ve ona erişimi kontrollü metotlar üzerinden vermektir.

Günlük hayat: ATM. Paranın nerede durduğunu, kasanın nasıl çalıştığını bilmezsiniz; sadece "çek", "yatır" düğmelerini kullanırsınız. Elinizi kasaya sokamazsınız.

5. Abstraction (Soyutlama)

Gereksiz detayı gizleyip "ne yapıldığını" göstermek, "nasıl yapıldığını" saklamaktır. Encapsulation veriyi korur, verilen komutlar ile sistemin çalışmasını sağlar; abstraction karmaşıklığı gizler.


Biri "güvenlik", diğeri "sadelik" odaklıdır.

Günlük hayat: Arabayı sürerken direksiyon, gaz ve fren kullanırsınız. Motorun nasıl çalıştığını

bilmeniz gerekmez.

Gerçek Proje Kullanımı: Bir ödeme sisteminde odeme.Yap() metodunu çağıran yazılımcı, arka planda banka API'sine giden şifreli paketlerin veya 3D Secure doğrulama protokollerinin iç detaylarıyla uğraşmaz.

6. Inheritance (Kalıtım / Miras Alma)

Çözdüğü problem: Ortak kodun tekrarını önler ve türler arasında hiyerarşi kurar.

Günlük hayat: Köpek bir hayvandır. Hayvan olmanın ortak özellikleri (nefes alma, yeme) her türde yeniden yazılmaz.

Otomobil, Kamyon ve Motosiklet; hepsi birer Araç'tır. Hepsinin hızı, plakası ve motoru vardır;

ancak Kamyonun ek olarak "damper kaldırma" özelliği bulunur.

7. Polymorphism (Çok biçimlilik)

Aynı mesajın (metot çağrısının), nesnenin gerçek türüne göre farklı davranış üretmesidir.

Yüzlerce if-else veya switch-case bloğu yazmadan, aynı metot çağrısına farklı nesnelerin kendi


doğalarına uygun şekilde farklı tepki vermesini sağlar.

Günlük hayat: "Yemek ye" komutu. Kedi mama yer, insan çatalla yer, kuş gagalar. Komut aynı,

uygulama farklıdır.

Bildirim sisteminde BildirimGonder() metodu çağrıldığında nesne SmsBildirim ise GSM operatörüne, EmailBildirim ise SMTP sunucusuna, PushBildirim ise mobil cihaza gönderim

yapar.

8. Interface (Arayüz) ve Abstract Class (Soyut Sınıf)

Abstract, ne yapılacağı yazılan ancak nasıl yapılacağını alt sınıflara bırakan bir şablondur; bir

nesnenin temel kimliğini oluşturur.

Bir lego parçası gibi düşünelim. Aralarındaki ilişkiyi bir lego insan figürü olarak alalım. Biz sadece interface ile kıyafetlerini değiştiriyoruz; abstract aynı temelimiz, yani insan, sabit kalıyor.

Abstract için özellik vermek diyebiliriz.

9. Composition ve Inheritance Arasındaki Fark

Bir oyun karakteri tasarlarken Savasci, Okcu gibi sabit kalıtım ağaçları kurmak yerine (Inheritance),

Karakter sınıfının içine ISilah parçası yerleştirmek (Composition), karakterin oyun ortasında kılıcı bırakıp yay alabilmesini sağlar.


10. Nesneler arasındaki ilişkiler

Dependency (bağımlılık) ---> Bir metot içinde geçici kullanma Rapor, PdfYazici'yı bir metotta

kullanır ---> Bağımsız

Association (ilişki) ---> Birbirini tanıyan nesneler Ogrenci ↔ Ders ---> Bağımsız

Aggregation (toplama) ---> "Sahip" ama parçalar bağımsız yaşar ---> Takim ve Oyuncu ---> Takım kapansa oyuncu kalır

Composition (bileşim) ---> "Sahip" ve parça sahibine bağlı ---> Ev ve Oda---> Ev yıkılırsa oda da yok olur

Inheritance (kalıtım) ---> "Bir ... dır" ---> Kedi → Hayvan ---> Tür ilişkisi

Realization ---> Interface uygulama ---> Ordek → Uçabilir ---> Sözleşme

Pekiştime örnk;

Sınıf/nesne: Siparis, KrediKarti gerçek dünyadaki varlıkları modeller.

Encapsulation: kalemler listesine dışarıdan müdahale edilemez.

Abstraction: Siparis, ödemenin nasıl yapıldığını bilmez.

Polymorphism: Ödeme türü değişir, tamamla() aynı kalır.

Composition: Sipariş, ödeme yöntemine sahiptir ve yöntem değiştirilebilir.

Constructor: Ödeme yöntemi olmadan sipariş yaratılamaz.
