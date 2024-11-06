using MySql.Data;
using MySql.Data.MySqlClient;


class calisanDAL{
string connectionString;
 MySqlConnection conn;

    public calisanDAL() //kurucu metot
	{ 
        connectionString="Server=localhost;Database=pys;Uid=root;Pwd="; 
    } 

    public void Baglantiyibaslat() 
    {
		conn=new MySqlConnection(connectionString); 
     try{ 
		 conn.Open(); 
		 Console.WriteLine("Mysql ile bağlantı kuruldu");
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
		Console.WriteLine("Mysql ile bağlantı kesildi");
        Console.Clear();
	 }

    public void Listele()
    {  
        string query="select * from calisan";
        Baglantiyibaslat();
        MySqlCommand cmd=new MySqlCommand(query,conn);
        MySqlDataReader rd=cmd.ExecuteReader();
        while(rd.Read())
        {
        Console.WriteLine("  ID="+rd[0].ToString()+"  TC="+rd[1].ToString()+"     AD="+rd[2].ToString()+"    SOYAD="+rd[3].ToString()+"  ÜCRET="+rd[4].ToString()+" SİFRE="+rd[5].ToString());
        }
        Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
		Console.ReadKey();
		Console.Clear();
    }
	
    public string SifreBul(string IDNo)
    {    
        string query="select Sifre from calisan WHERE calisanID=@ID";
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
     string ad=Console.ReadLine(); 
     string query="select * from calisan where calisanAd Like "+ad; 
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn);
     cmd.Parameters.AddWithValue("@calisanAd",ad);
     MySqlDataReader rd=cmd.ExecuteReader(); 
     while(rd.Read())
     { 
     Console.WriteLine("ID="+rd[0].ToString()+"  TC="+rd[1].ToString()+"     AD="+rd[2].ToString()+"    SOYAD="+rd[3].ToString()+"  ÜCRET="+rd[4].ToString()+" SİFRE="+rd[5].ToString());}
     
     Baglantiyikes();
     }
    
    public void Ekle()
    {
     Console.WriteLine("Ad giriniz:");
     string ad=Console.ReadLine();
     Console.WriteLine("Tc giriniz:"); 
     string tc=Console.ReadLine(); 
     Console.WriteLine("Soyad Giriniz:");
     string soyad=Console.ReadLine(); 
     Console.WriteLine("Ücret giriniz:"); 
     string ucret=Console.ReadLine();
     Console.WriteLine("Sifre giriniz:");
	 string sifre = Console.ReadLine();
	 string query="Insert Into calisan (calisanAd,calisanTc,calisanSoyad,calisanUcret,Sifre) values(@calisanAd,@calisanTc,@calisanSoyad,@calisanUcret,@Sifre)"; 
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@calisanAd",ad);  
     cmd.Parameters.AddWithValue("@calisanTc",tc); 
     cmd.Parameters.AddWithValue("@calisanSoyad",soyad);
     cmd.Parameters.AddWithValue("@calisanUcret",ucret); 
     cmd.Parameters.AddWithValue("@Sifre",sifre);
	 cmd.ExecuteNonQuery(); 
     Baglantiyikes(); 
	 
	 Console.WriteLine("Çalışan ekleme başarılı olmuştur.\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }
    
    public void Sil()
    {
     Console.WriteLine("Silinecek ID=");
     string silecekId=Console.ReadLine(); 
     string query="delete from calisan where calisanID=@silecekId";  
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn);
     cmd.Parameters.AddWithValue("@silecekId",silecekId);
     cmd.ExecuteNonQuery(); 
     Baglantiyikes();
	 Console.WriteLine("Çalışan silme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }

    public void Guncelle()
    {
    Console.WriteLine("Güncellenecek ID=");
    string DegisecekId=Console.ReadLine(); 
    Console.WriteLine("Güncellenecek Tc=");
    string DegisecekTc = Console.ReadLine();
    Console.WriteLine("Güncellenecek Ad=");
    string DegisecekAd=Console.ReadLine(); 
    Console.WriteLine("Güncellenecek Soyad=");
    string DegisecekSoyad=Console.ReadLine(); 
    Console.WriteLine("Güncellenecek ucret=");
    string Degisecekucret=Console.ReadLine(); 
    Console.WriteLine("Degisecek Sifre=");
	string DegisecekSifre = Console.ReadLine();
    Baglantiyibaslat();
    string query="update calisan SET calisanTc=@degiscektc,calisanAd=@degiscekad,calisanSoyad=@degisceksoyad,calisanUcret=@degiscekucret,Sifre=@degisceksifre where calisanID=@degiscekID"; 
    MySqlCommand cmd=new MySqlCommand(query,conn); 
    cmd.Parameters.AddWithValue("@degiscektc",DegisecekTc);
    cmd.Parameters.AddWithValue("@degiscekad",DegisecekAd); 
    cmd.Parameters.AddWithValue("@degisceksoyad",DegisecekSoyad);
    cmd.Parameters.AddWithValue("@degiscekucret",Degisecekucret); 
    cmd.Parameters.AddWithValue("@degisceksifre",DegisecekSifre);
	cmd.Parameters.AddWithValue("@degiscekID",DegisecekId);
    cmd.ExecuteNonQuery(); 
    Baglantiyikes();
	
	Console.WriteLine("Çalışan güncelleme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	Console.ReadKey();
	Console.Clear();
    }
	public void SifreGuncelle()
    {
      Console.WriteLine("Güncellenecek ID Giriniz:");
      string Id=Console.ReadLine();
      Console.WriteLine("Yeni Sifre Giriniz");
      string sifre=Console.ReadLine();
      string query="update calisan SET Sifre=@sifre where calisanId=@Id";
      Baglantiyibaslat();
      MySqlCommand cmd=new MySqlCommand(query,conn);
      cmd.Parameters.AddWithValue("@Id",Id);
      cmd.Parameters.AddWithValue("@Sifre",sifre);
      cmd.ExecuteNonQuery();
      Baglantiyikes();

      Console.WriteLine("Şifre Güncelleme Başarılı!\n Devam etmek için rastgele tuşa basınız:");
      Console.ReadKey();
      Console.Clear();
    }
	
	public void MaasListele()
	{
		string query = " select * from calisan";
		Baglantiyibaslat();
		MySqlCommand cmd = new MySqlCommand(query,conn);
		MySqlDataReader rd = cmd.ExecuteReader();
		while(rd.Read())
       {
        Console.WriteLine("  ID="+rd[0].ToString()+"  UCRET="+rd[4].ToString());}
        	    
		
		Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
		Console.ReadKey();
	
      }
	  
	  public void MaasGuncelle()
	  {
		  Console.WriteLine("Güncellenecek ID giriniz");
		  string ID = Console.ReadLine();
		  Console.WriteLine("Yeni maas giriniz:");
		  string ucret = Console.ReadLine();
		  string query = "update calisan SET calisanUcret=@calisanUcret where calisanID=@ID";
		  Baglantiyibaslat();
		  MySqlCommand cmd = new MySqlCommand(query,conn);
		  cmd.Parameters.AddWithValue("@Id",ID);
		  cmd.Parameters.AddWithValue("@calisanUcret",ucret);
		  cmd.ExecuteNonQuery();
		  Baglantiyikes();
		  
		  Console.WriteLine("Maaş güncelleme başarılı\nDevam etmek için rastgele tuşa basınız:");
		  Console.ReadKey();
		  Console.Clear();
	  }
	public void SifreListele()
{  
    string query = "select * from calisan";
    Baglantiyibaslat();
    MySqlCommand cmd = new MySqlCommand(query, conn);
    MySqlDataReader rd = cmd.ExecuteReader();
    while (rd.Read())
    {
        Console.WriteLine("ID=" + rd[0].ToString() + " SİFRE=" + rd[5].ToString());
    }

    Console.WriteLine("Devam etmek için rastgele tuşa basınız!");
    Console.ReadKey();
  }
}


