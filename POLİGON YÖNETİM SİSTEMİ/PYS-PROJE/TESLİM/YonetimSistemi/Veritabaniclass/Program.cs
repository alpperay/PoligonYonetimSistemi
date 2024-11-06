// See https://aka.ms/new-console-template for more information
calisanDAL calisan =new calisanDAL(); 
mermiDAL mermi=new mermiDAL(); 
musteriDAL musteri = new musteriDAL(); 
silahDAL silah =new silahDAL(); 
kiralamaDAL kiralama=new kiralamaDAL(); 
string sorgu;

do{
 Console.Clear(); 
 Console.WriteLine("-POLİGON YÖNETİM SİSTEMİ!-");
 Console.WriteLine("--Seçim Yapınız--");
 Console.WriteLine("YÖNETİCİ GİRİŞİ İÇİN...Y");
 Console.WriteLine("ÇALIŞAN GİRİŞİ İÇİN...E");
 Console.WriteLine("MÜŞTERİ GİRİŞİ İÇİN...M ");
 Console.WriteLine("Çıkış için...C");
 sorgu=Console.ReadLine();
 Console.Clear();
 switch(sorgu){
	case("Y"):
	yoneticimenusu();
	break;
    case("E"):
	calisanmenusu(); 
	break; 
    case("M"):
	musterimenusu(); 
	break;
 }

}while(sorgu!="C");



void yoneticimenusu(){ 
 Console.WriteLine("Devam etmek için yonetici sifre giriniz:");
 string sifre = Console.ReadLine();
if(sifre=="5050")
{
	Console.Clear();
	Console.WriteLine("Giriş başarılı işlemlerinizi gerçekleştirebilirsiniz!");
do{
 Console.WriteLine("Çalışan Eklemek İçin___________________CE");
 Console.WriteLine("Çalışan Güncellemek İçin_______________CG");
 Console.WriteLine("Çalışan Silmek İçin____________________CS");
 Console.WriteLine("Çalışan Listesi İçin___________________CL");
 Console.WriteLine("Müşteri Eklemek İçin___________________ME");
 Console.WriteLine("Müşteri Güncellemek İçin_______________MG");
 Console.WriteLine("Müşteri Silmek İçin____________________MS");
 Console.WriteLine("Müşteri Listesi İçin___________________ML");
 Console.WriteLine("Silah Eklemek İçin________________SE");
 Console.WriteLine("Silah Güncellemek İçin________________SG");
 Console.WriteLine("Silah Silmek İçin_____________________SS");
 Console.WriteLine("Silah Listesi İçin____________________SL");
 Console.WriteLine("Mermi Eklemek için_____________________LE");
 Console.WriteLine("Mermi Listesi için_____________________LM");
 Console.WriteLine("Mermi Güncellemek için_________XQ");
 Console.WriteLine("Mermi silmek için________________XM");
 Console.WriteLine("Çalışan Şifre Listesi İçin ________CSL");
 Console.WriteLine("Çalışan Şifre Güncellemek İçin ______CSG");
 Console.WriteLine("Çalışan Maaş Listesi İçin__________CML");
 Console.WriteLine("Çalışan Maaş Güncellemek İçin______CMG");
 Console.WriteLine("Musteri Şifre Listesi İçin__________MSL");
 Console.WriteLine("Musteri Şifre Güncellemek İçin________MSG");
 Console.WriteLine("Yönetici Hesabından Çıkmak İçin________O");
 sorgu=Console.ReadLine(); 
 Console.Clear(); 

 switch(sorgu)
 {
  case ("CE"):
  calisan.Ekle();
  break;
  case ("CG"):
  calisan.Guncelle();
  break;
  case ("CS"):
  calisan.Sil();
  break;
  case ("CL"):
  calisan.Listele();
  break;
  case ("ME"):
  musteri.Ekle();
  break;
  case ("MG"):
  musteri.Guncelle(); 
  break;
  case ("MS"):
  musteri.Sil(); 
  break;
  case ("ML"):
  musteri.Listele(); 
  break;
  case ("SE"):
  silah.Ekle();
  break;
  case ("SG"):
  silah.Guncelle();
  break;
  case ("SS"):
  silah.Sil(); 
  break;
  case ("SL"):
  silah.Listele();
  break;
  case ("LE"):
  mermi.Ekle();
  break;
  case("LM"):
  mermi.Listele();
  break;
  case("XQ"):
  mermi.Guncelle();
  break;
  case("XM"):
  mermi.Sil();
  break;
  case ("CSL"):
  calisan.SifreListele();
  break;
  case ("CSG"):
  calisan.SifreGuncelle();
  break;
  case ("CML"):
  calisan.MaasListele();
  break;
  case ("CMG"):
  calisan.MaasGuncelle();
  break;
  case ("MSL"):
  musteri.SifreListele();
  break;
  case("MSG"):
  musteri.SifreGuncelle();
  break;
}}while(sorgu != "O"); 
 }
 else 
 {
     Console.WriteLine("Girilen şifre hatalı\nDevam etmek için rastgele tuşa basın:");
     Console.ReadKey();
 }
}
    



void calisanmenusu(){ 
 Console.WriteLine("Devam etmek için çalışan ıd giriniz:");
 string IDNo=Console.ReadLine();
 Console.WriteLine("Devam etmek için şifre giriniz:");
 string sifre=Console.ReadLine();
 string alinansifre = calisan.SifreBul(IDNo); 
 if(sifre==alinansifre)
 {
 do{
 Console.WriteLine("Silah Stok Listesi İçin__________________Z");
 Console.WriteLine("Silah Stoğunu Guncellemek İçin____________A");
 Console.WriteLine("Mermi Stok Listesi İçin_______________L");
 Console.WriteLine("Mermi Stoğunu Güncellemek için_________________G");
 Console.WriteLine("Müşteri Listesi İçin____________________M");
 Console.WriteLine("Çalışan hesabından çikmak için___________O");
 sorgu=Console.ReadLine(); 
 Console.Clear(); 

 switch(sorgu)
 {
  case "Z":
  silah.StokListele();
  break;
  case "A":
  silah.StokGuncelle();
  break;
  case "L":
  mermi.StokLst();
  break;
  case "G":
  mermi.StokGnc();
  break;
  case "M":
  musteri.Listele();
  break;
 }}while(sorgu != "O");
 }
 else
{
    Console.WriteLine("Girilen sifre hatali");
}}
 
void musterimenusu(){ 
        Console.WriteLine("Devam etmek için musteri id giriniz:");
        string IDNo=Console.ReadLine();
        Console.WriteLine("Devam etmek için şifreyi giriniz:");
        string sifre = Console.ReadLine();
        string alinansifre = musteri.SifreBul(IDNo);
 if(sifre==alinansifre)
 {
do{
 Console.WriteLine("Silah Listesini Görmek İçin__________G");
 Console.WriteLine("Silah Almak İçin___________A");
 Console.WriteLine("Mermi Listesini Görmek İçin______________L");
 Console.WriteLine("Mermi Almak İçin______________M");
 Console.WriteLine("Önceki Menü İçin______________O");
 sorgu=Console.ReadLine();
 Console.Clear(); 

 switch (sorgu)
{
    case "G":
        silah.Listele();
        break;
    case "A":
        Console.WriteLine("Silah ID giriniz");
        string silahID = Console.ReadLine();
        Console.WriteLine("Adet giriniz:");
        int adetA = int.Parse(Console.ReadLine());
        silah.SilahAlma(silahID, adetA);
        break;
    case "L":
        mermi.Listele();
        break;
    case "M":
        Console.WriteLine("Mermi ID'sini giriniz:");
        string mermiID = Console.ReadLine();
        Console.WriteLine("Adet giriniz:");
        int adetM = int.Parse(Console.ReadLine());
        mermi.MermiAlma(mermiID, adetM);
        break;
}

} while (sorgu != "O");
}
else
{
    Console.WriteLine("Girilen şifre hatalı. Tekrar deneyiniz");
}
}