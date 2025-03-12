# Poligon Yönetim Sistemi

Bu proje, bir Poligon Yönetim Sistemi'nin temel özelliklerini barındırır ve .NET 8.0 ile geliştirilmiştir. Sistem, veritabanı bağlantısı ile çalışır ve farklı kullanıcı rollerine göre erişim ve işlem yapma yetkileri sunar.

## Özellikler : 

1) .NET 8.0, Veritabanı Bağlantısı: Sistem veritabanı ile entegre çalışmaktadır.
2) Kullanıcı Rolleri: Yönetici (tam yetkili), Çalışan (kısıtlı yetkilerle günlük işlemler), Müşteri (sadece kişisel bilgilerini görüntüleyebilir),
3) Poligon Yönetimi: Poligon verilerinin eklenmesi, güncellenmesi ve silinmesi işlemleri yapılabilir,

## Kurulum :

1. Proje Dosyasını İndirin: GitHub reposunu bilgisayarınıza klonlayın:
```sh
git clone <repo-url>
```
2. Wamp Server veya XAMPP Kullanarak Veritabanı Bağlantısını Sağlayın:
Eğer Wamp Server veya XAMPP kullanıyorsanız, öncelikle bu yazılımlardan birini bilgisayarınıza kurun ve çalıştırın.
3. Veritabanınızı oluşturun ve ilgili veritabanı bilgilerini appsettings.json dosyasındaki bağlantı string'ine ekleyin.
Örnek bağlantı string'i:
```sh
"ConnectionStrings": {
  "DefaultConnection": "Server=localhost;Database=veritabaniAdi;User Id=root;Password=;"
}
```
- (Burada localhost, veritabaniAdi gibi kısımları kendi yerel veritabanı ayarlarınıza göre değiştirdiğinizden emin olun.)
 
4. Proje dizinine gidin:
```sh
  cd project-folder
````

5. Projeyi çalıştırın:
````sh
dotnet run
````

## Kullanım :

1) Sisteme giriş yapın ve kullanıcı türüne göre yetkileri keşfedin:
2) Yönetici olarak kullanıcı ekleyebilir ve tüm verileri yönetebilirsiniz.
3) Çalışan olarak günlük işlemleri takip edebilir ve poligonlarla ilgili işlemler yapabilirsiniz.
4) Müşteri olarak poligon için silah alma ve mermi alma gibi işlemleri gerçekleştirebilirsiniz.

## Geliştirici & Yazar

Alp Eray Taşçı

## Lisans

2025 Alp Eray Taşçı Tüm Hakları Saklıdır.

## Katkıda Bulunma :

1) GitHub reposunu fork edin,
2) Kendi değişikliklerinizi yapın ve pull request gönderin.
