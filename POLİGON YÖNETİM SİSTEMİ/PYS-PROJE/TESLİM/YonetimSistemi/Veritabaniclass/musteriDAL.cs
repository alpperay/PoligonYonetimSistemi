using MySql.Data;
using MySql.Data.MySqlClient;


class musteriDAL
{
  string connectionString;
  MySqlConnection conn;

    public musteriDAL()
    {
        connectionString="Server=localhost;Database=pys;Uid=root;Pwd="; 
    } 

    public void Baglantiyibaslat() 
    {
        conn=new MySqlConnection(connectionString);
     try{
        conn.Open(); 
        Console.WriteLine("Mysql ile bağlanti kuruldu");
        Console.Clear();
        }
     catch(Exception e)
     {
        Console.WriteLine(e);
     }   
    }                     

    
    public void Baglantiyikes()
    {
        conn.Close(); 
        Console.WriteLine("Mysql ile bağlanti kesildi"); 
        Console.Clear();
     }

    public void Listele()
    {   string query="select * from musteri"; 
        Baglantiyibaslat(); 
        MySqlCommand cmd=new MySqlCommand(query,conn); 
        MySqlDataReader rd=cmd.ExecuteReader(); 
        while(rd.Read())
        {
            Console.WriteLine("ID="+rd[0].ToString()+"  TC="+rd[1].ToString()+"    AD="+rd[2].ToString()+"  SOYAD="+rd[3].ToString()+"  ADRES="+rd[4].ToString()+"  TEL="+rd[5].ToString()+"  POSTA="+rd[6].ToString()+" SİFRE="+rd[7].ToString());}  
            Console.WriteLine("Devam etmek için rastgele tuşa basınız"); 
			Console.ReadKey();
			Console.Clear();
		}
		

    public string SifreBul(string IDNo)
    {    
        string query="select musteriSifre from musteri WHERE musteriID=@ID";
        Baglantiyibaslat();
        MySqlCommand cmd=new MySqlCommand(query,conn);
		cmd.Parameters.AddWithValue("@ID",IDNo);
        cmd.ExecuteNonQuery();
        MySqlDataReader rd=cmd.ExecuteReader();
        string sifre="";
        while(rd.Read())
		{
		 sifre=rd[0].ToString();
		}
        Baglantiyikes();
		if(sifre=="")
		{
		 sifre="404 NOT FOUND";
		}
        return sifre;
    }

    public void ListeleAd()
    {
     Console.WriteLine("İçinde Geçecek Adi Giriniz");
     string ad= Console.ReadLine(); 
     string query="select * from musteri where musteriAd Like "+ad; 
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@musteriAd",ad);
     MySqlDataReader rd=cmd.ExecuteReader(); 
     while(rd.Read())   
     {
       Console.WriteLine("ID="+rd[0].ToString()+"  TC="+rd[1].ToString()+"    AD="+rd[2].ToString()+"  SOYAD="+rd[3].ToString()+"  ADRES="+rd[4].ToString()+"  TEL="+rd[5].ToString()+"  POSTA="+rd[6].ToString()+" SİFRE="+rd[7].ToString());}
	   Baglantiyikes(); 
     }

    public void Ekle()
    {
	 Console.WriteLine("Ad giriniz:");
     string ad=Console.ReadLine(); 
     Console.WriteLine("Soyad giriniz:"); 
     string soyad=Console.ReadLine(); 
     Console.WriteLine("Adres giriniz:");
     string adres=Console.ReadLine(); 
	 Console.WriteLine("Tc No giriniz:");
     string tc=Console.ReadLine(); 
     Console.WriteLine("Tel no giriniz:");
     string tel=Console.ReadLine(); 
     Console.WriteLine("E-posta giriniz:");
     string posta=Console.ReadLine(); 
     Console.WriteLine("Sifre giriniz:");
	 string sifre = Console.ReadLine();
	 string query="Insert Into musteri (musteriTcNo,musteriAd,musteriSoyad,musteriAdres,musteriTel,musteriPosta,musteriSifre) values(@Tc,@Ad,@Soyad,@Adres,@Tel,@Posta,@Sifre)"; // Veritabanında bilgileri kaydetmek için kullanılır.
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@Tc",tc); 
     cmd.Parameters.AddWithValue("@Ad",ad);
     cmd.Parameters.AddWithValue("@Soyad",soyad); 
     cmd.Parameters.AddWithValue("@Adres",adres);
     cmd.Parameters.AddWithValue("@Tel",tel); 
     cmd.Parameters.AddWithValue("@Posta",posta);
     cmd.Parameters.AddWithValue("@Sifre",sifre);	 
     cmd.ExecuteNonQuery(); 
     Baglantiyikes();
	 Console.WriteLine("Müşteri ekleme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
     }
    
     
    public void Sil()
    {
     Console.WriteLine("Silinecek ID=");
     string silecekId=Console.ReadLine(); 
     string query="delete from musteri where musteriID=@silecekId";
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn);
     cmd.Parameters.AddWithValue("@silecekId",silecekId);
     cmd.ExecuteNonQuery();
     Baglantiyikes();
	 Console.WriteLine("Müşteri silme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }

    public void Guncelle()
    {
        
	 Console.WriteLine("Güncellenecek ID giriniz:");
     string ıd=Console.ReadLine(); 
     Console.WriteLine("Ad giriniz:");
     string ad=Console.ReadLine();
     Console.WriteLine("Soyad giriniz:");
     string soyad=Console.ReadLine(); 
     Console.WriteLine("Adres giriniz:");
     string adres=Console.ReadLine(); 
     Console.WriteLine("Tel no giriniz:");
     string tel=Console.ReadLine(); 
     Console.WriteLine("Posta adresi giriniz:");
     string posta=Console.ReadLine(); 
     Console.WriteLine("Sifre giriniz:");
	 string sifre = Console.ReadLine();
	 string query="update musteri SET musteriAd=@ad,musteriSoyad=@soyad,musteriAdres=@adres,musteriTel=@tel,musteriPosta=@Posta,musteriSifre=@sifre where musteriID=@Id"; // Veritabanında bilgileri değiştirmek-güncellemek için kullanılır.
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@Id",ıd); 
     cmd.Parameters.AddWithValue("@Ad",ad);  
     cmd.Parameters.AddWithValue("@Soyad",soyad);
     cmd.Parameters.AddWithValue("@Adres",adres);
     cmd.Parameters.AddWithValue("@Tel",tel); 
     cmd.Parameters.AddWithValue("@Posta",posta);
	 cmd.Parameters.AddWithValue("@Sifre",sifre); 
     cmd.ExecuteNonQuery();
     Baglantiyikes();
	 Console.WriteLine("Müşteri güncelleme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }
	
	public void SifreGuncelle()
    {
      Console.WriteLine("Güncellenecek ID Giriniz:");
      string Id=Console.ReadLine();
      Console.WriteLine("Yeni Sifre Giriniz");
      string sifre=Console.ReadLine();
      string query="update musteri SET musteriSifre=@musterisifre where musteriId=@Id";
      Baglantiyibaslat();
      MySqlCommand cmd=new MySqlCommand(query,conn);
      cmd.Parameters.AddWithValue("@Id",Id);
      cmd.Parameters.AddWithValue("@musteriSifre",sifre);
      cmd.ExecuteNonQuery();
      Baglantiyikes();

      Console.WriteLine("Şifre Güncelleme Başarılı!\n Devam etmek için rastgele tuşa basınız:");
      Console.ReadKey();
      Console.Clear();
    }
	
	 public void SifreListele()
    {   
        string query="select * from musteri";
        Baglantiyibaslat();
        MySqlCommand cmd=new MySqlCommand(query,conn);
        MySqlDataReader rd=cmd.ExecuteReader();
        while(rd.Read())
		{
		 Console.WriteLine("ID="+rd[0].ToString()+" SİFRE="+rd[7].ToString());
		}
    
        Console.WriteLine("Devam etmek için rastgele tuşa basınız!");
        Console.ReadKey();
        
    
    }
}

