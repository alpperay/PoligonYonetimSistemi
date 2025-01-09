# Poligon Yönetim Sistemi
Bu proje, bir Poligon Yönetim Sistemi'nin temel özelliklerini barındırır ve .NET 8.0 ile geliştirilmiştir. Sistem, veritabanı bağlantısı ile çalışır ve farklı kullanıcı rollerine göre erişim ve işlem yapma yetkileri sunar.

Özellikler
Platform: .NET 8.0
Veritabanı Bağlantısı: Sistem, veritabanı ile entegre bir şekilde çalışmaktadır.
Kullanıcı Rolleri:
Yönetici: Sistemde tam yetkili kullanıcıdır, tüm işlemleri gerçekleştirebilir.
Çalışan: Kısıtlı yetkilerle sisteme erişim sağlar ve günlük işlemleri yönetir.
Müşteri: En düşük yetkili kullanıcıdır, yalnızca kişisel bilgilerine erişebilir.
Poligon Yönetimi: Poligon verilerinin sisteme eklenmesi, güncellenmesi ve silinmesi işlemleri yapılabilir.
Gelişmiş Güvenlik: Kullanıcıların sisteme güvenli bir şekilde giriş yapabilmesi için doğrulama mekanizmaları kullanılmıştır.
Kurulum
Proje Dosyasını İndirin

GitHub reposunu bilgisayarınıza klonlayın:
bash
Kodu kopyala
git clone https://github.com/kullaniciadi/PoligonYonetimSistemi.git
Veritabanı Bağlantısını Yapılandırın

appsettings.json dosyasındaki veritabanı bağlantı ayarlarını düzenleyin.
Proje Çalıştırma

Visual Studio veya benzeri bir IDE ile projeyi açın.
Çalıştırmak için F5 tuşuna basın.
Kullanım
Sisteme giriş yapın ve kullanıcı türüne göre yetkileri keşfedin:
Yönetici olarak kullanıcı ekleyebilir ve tüm verileri yönetebilirsiniz.
Çalışan olarak günlük işlemleri takip edebilir ve poligonlarla ilgili işlemler yapabilirsiniz.
Müşteri olarak yalnızca kendi bilgilerinizi görüntüleyebilirsiniz.
Katkıda Bulunma
GitHub reposunu fork edin.
Kendi değişikliklerinizi yapın ve pull request gönderin.
