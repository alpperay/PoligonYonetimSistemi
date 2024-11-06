using MySql.Data;
using MySql.Data.MySqlClient;


class mermiDAL
{
 string connectionString;
 MySqlConnection conn;

    public mermiDAL()//kurucu metot
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
        Console.WriteLine("Mysql ile bağlanti kesildi");
        Console.Clear();
    }

    public void Listele()
    { 
        string query="select * from mermi"; 
        Baglantiyibaslat();
        MySqlCommand cmd=new MySqlCommand(query,conn);
        MySqlDataReader rd=cmd.ExecuteReader();
        while(rd.Read())
        {
         Console.WriteLine("ID="+rd[0].ToString()+"  AD="+rd[1].ToString()+"    FİYAT="+rd[2].ToString()+"  STOK="+rd[3].ToString());}
		 Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
		 Console.ReadKey();
		 Console.Clear();
      }

    public void ListeleAd()
    {
     Console.WriteLine("İçinde Geçecek Adi Giriniz");  
     string ad=Console.ReadLine(); 
     string query="select * from mermi where mermiAd Like "+ad;
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
	 cmd.Parameters.AddWithValue("@mermiAd",ad);
     MySqlDataReader rd=cmd.ExecuteReader();
     while(rd.Read())   
      {
        Console.WriteLine("ID="+rd[0].ToString()+"  AD="+rd[1].ToString()+"    FİYAT="+rd[2].ToString()+"  STOK="+rd[3].ToString());}
		Baglantiyikes();  
     }

     public void StokLst()
    {
        string query = "select mermiID,mermiAd,mermiStok from mermi";
        Baglantiyibaslat();
        MySqlCommand cmd = new MySqlCommand(query, conn);
        MySqlDataReader rd = cmd.ExecuteReader();
		while(rd.Read())   
      {
        Console.WriteLine("ID="+rd[0].ToString()+"  AD="+rd[1].ToString()+"  STOK="+rd[2].ToString());}
        Console.WriteLine("Devam etmek için rastgele tuşa basınız");
		Console.ReadKey();
		Console.Clear();
     }

     public void StokGnc()
    {
     Console.WriteLine("Güncellenenecek id=");
     string DegisecekId=Console.ReadLine(); 
     Console.WriteLine("Güncellenenecek stok=");
     string DegisecekStok=Console.ReadLine();	 
     Baglantiyibaslat();
     string query="update mermi SET mermiStok=@degiscekstok where mermiID=@degiscekID"; 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@degiscekID",DegisecekId); 
     cmd.Parameters.AddWithValue("@degiscekstok",DegisecekStok);
     cmd.ExecuteNonQuery(); 
     Baglantiyikes();  
	 Console.WriteLine("Stok güncelleme başarılı!\nDevam etmek için rastgele tuşa basınız");
	 Console.ReadKey();
	 Console.Clear();
	 
    }
	
    public void Ekle()
    {
     Console.WriteLine("Mermi adını giriniz:");
     string mermiAd=Console.ReadLine(); 
     Console.WriteLine("Mermi fiyatını giriniz:");
     string mermiFiyat=Console.ReadLine(); 
     Console.WriteLine("Mermi stok adetini giriniz:");
     string mermiStok=Console.ReadLine(); 
     string query="Insert Into mermi (mermiAd,mermiFiyat,mermiStok) values(@mermiAd,@mermiFiyat,@mermiStok)"; 
     Baglantiyibaslat();
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@mermiAd",mermiAd); 
     cmd.Parameters.AddWithValue("@mermiFiyat",mermiFiyat);
     cmd.Parameters.AddWithValue("@mermiStok",mermiStok); 
     cmd.ExecuteNonQuery();
     Baglantiyikes(); 
	 Console.WriteLine("Mermi ekleme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }

    public void Sil()
    {
     Console.WriteLine("Silinecek ID=");
     string silecekId=Console.ReadLine(); 
     string query="delete from mermi where mermiID=@silecekId"; 
     Baglantiyibaslat();
     MySqlCommand cmd=new MySqlCommand(query,conn);
     cmd.Parameters.AddWithValue("@silecekId",silecekId); 
     cmd.ExecuteNonQuery(); 
     Baglantiyikes(); 
	 Console.WriteLine("Mermi silme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }

    public void Guncelle()
    {
	 Console.WriteLine("Güncellenecek ID=");
     string DegisecekId=Console.ReadLine(); 
     Console.WriteLine("Güncellenecek Ad=");
     string DegisecekAd=Console.ReadLine(); 
     Console.WriteLine("Güncellenecek Fiyat=");
     string DegisecekFiyat=Console.ReadLine(); 
     Console.WriteLine("Güncellenecek Stok=");
     string DegisecekStok=Console.ReadLine(); 
     Baglantiyibaslat(); 
     string query="update mermi SET mermiAd=@degiscekad,mermiStok=@degiscekstok,mermiFiyat=@degiscekFiyat where mermiID=@degiscekID"; 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@degiscekad",DegisecekAd); 
     cmd.Parameters.AddWithValue("@degiscekstok",DegisecekStok); 
     cmd.Parameters.AddWithValue("@degiscekFiyat",DegisecekFiyat); 
     cmd.Parameters.AddWithValue("@degiscekID",DegisecekId); 
     cmd.ExecuteNonQuery(); 
     Baglantiyikes(); 
	 Console.WriteLine("Mermi güncelleme başarılı!\n Devam etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }
	
	public void MermiAlma(string mermiID, int adet)
    {
      if (adet <= 0)
    {
        Console.WriteLine("Lütfen geçerli bir adet giriniz.");
        return;
    }
    
       Baglantiyibaslat();

    // Mermi stok kontrolü
    string query = "SELECT mermiStok FROM mermi WHERE mermiID = @mermiID";
    MySqlCommand cmd = new MySqlCommand(query, conn);
    cmd.Parameters.AddWithValue("@mermiID", mermiID);
    int mermiStok = Convert.ToInt32(cmd.ExecuteScalar());

    if (mermiStok >= adet)
    {
        // Stok güncelleme
        mermiStok -= adet;
        string updateQuery = "UPDATE mermi SET mermiStok = @mermiStok WHERE mermiID = @mermiID";
        MySqlCommand updateCmd = new MySqlCommand(updateQuery, conn);
        updateCmd.Parameters.AddWithValue("@mermiStok", mermiStok);
        updateCmd.Parameters.AddWithValue("@mermiID", mermiID);
        updateCmd.ExecuteNonQuery();

        Console.WriteLine(adet + " adet mermi alındı.");
        

        
        Console.WriteLine("Mermi başarıyla satın alındı\nDevam etmek için rastgele tuşa basınız:");
        Console.ReadKey();
        Console.Clear();
    }
    else if (mermiStok == 0)
    {
        Console.WriteLine("Üzgünüz, bu mermiden stokta kalmamıştır.");
    }
    else
    {
        Console.WriteLine("Stokta yeterli mermi bulunmamaktadır.");
    }
    

    Baglantiyikes();
    }
}

