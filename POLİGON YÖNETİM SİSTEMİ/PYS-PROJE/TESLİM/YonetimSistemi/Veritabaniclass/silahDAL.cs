using MySql.Data;
using MySql.Data.MySqlClient;


class silahDAL{
string connectionString;
 MySqlConnection conn;

    public silahDAL()
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
        string query="select * from silah";  
        Baglantiyibaslat();
        MySqlCommand cmd=new MySqlCommand(query,conn); 
        MySqlDataReader rd=cmd.ExecuteReader();
        while(rd.Read())
        {
         Console.WriteLine("silahID="+rd[0].ToString()+ "  silahAd="+rd[1].ToString()+"  silahFiyat="+rd[2].ToString()+ " silahStok="+rd[3].ToString());}
         
		 Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
		 Console.ReadKey();
		 Console.Clear();
      }
	
	 public void StokListele()
{
    string query = "select silahID, silahStok from silah";
    Baglantiyibaslat();
    MySqlCommand cmd = new MySqlCommand(query, conn);
    MySqlDataReader rd = cmd.ExecuteReader();
    
    while(rd.Read())   
    {
        Console.WriteLine("silahID=" + rd[0].ToString() + " silahStok=" + rd[1].ToString());
    }
    
    
    Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
    Console.ReadKey();
    Console.Clear();
}

	 
	public void StokGuncelle()
{
    Console.WriteLine("Güncellenecek id=");
    string DegiscekSilahId = Console.ReadLine(); 
    Console.WriteLine("Güncellenecek stok=");
    string DegiscekSilahStok = Console.ReadLine();	 
    Baglantiyibaslat();
    string query = "update silah SET silahStok=@degiscekstok where silahID=@degiscekID"; 
    MySqlCommand cmd = new MySqlCommand(query, conn); 
    cmd.Parameters.AddWithValue("@degiscekID", DegiscekSilahId); 
    cmd.Parameters.AddWithValue("@degiscekstok", DegiscekSilahStok);
    cmd.ExecuteNonQuery(); 
    Baglantiyikes();	 
    Console.WriteLine("Devam etmek için rastgele tuşa basınız:");
    Console.ReadKey();
    Console.Clear();
}

	 
	 
	 public void ListeleAd()
{
    Console.WriteLine("Silah adını Giriniz:");
    string ad = Console.ReadLine();
    string query = "SELECT * FROM silah WHERE silahAd = @silahAd"; 
    Baglantiyibaslat();
    MySqlCommand cmd = new MySqlCommand(query, conn);
    cmd.Parameters.AddWithValue("@silahAd", ad);
    MySqlDataReader rd = cmd.ExecuteReader(); 
    while(rd.Read()) 
    {
        Console.WriteLine("silahID=" + rd[0].ToString() + "  silahAd=" + rd[1].ToString() + "  silahFiyat=" + rd[2].ToString() + "  silahStok=" + rd[3].ToString());
    }
     Baglantiyikes(); 
    
}
    public void Ekle()
    {
     Console.WriteLine("Silah adını giriniz:");
     string silahAd=Console.ReadLine(); 
     Console.WriteLine("Silah fiyatını giriniz:");
     string silahFiyat=Console.ReadLine(); 
     Console.WriteLine("Silah stok adetini giriniz:");
     string silahStok=Console.ReadLine(); 
     string query="Insert Into silah (silahAd,silahFiyat,silahStok) values(@silahAd,@silahFiyat,@silahStok)"; 
     Baglantiyibaslat();
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@silahAd",silahAd); 
     cmd.Parameters.AddWithValue("@silahFiyat",silahFiyat);
     cmd.Parameters.AddWithValue("@silahStok",silahStok); 
     cmd.ExecuteNonQuery();
     Baglantiyikes();
     Console.WriteLine("Silah ekleme başarılı\n Devam etmek için rastgele tuşa basınız");
     Console.ReadKey();
     Console.Clear();	 
    }
  
     
     public void Sil()
    {
     Console.WriteLine("Silinecek silah ID=");
     string silecekId=Console.ReadLine();
     string query="delete from silah where silahID=@silecekId"; 
     Baglantiyibaslat(); 
     MySqlCommand cmd=new MySqlCommand(query,conn); 
     cmd.Parameters.AddWithValue("@silecekId",silecekId);
     cmd.ExecuteNonQuery();  
     Baglantiyikes(); 
	 Console.WriteLine("Silah silme başarılı!\n Devam Etmek için rastgele tuşa basınız:");
	 Console.ReadKey();
	 Console.Clear();
    }	

    public void Guncelle()
{
    Console.WriteLine("Güncellenecek silah id=");
    string DegiscekSilahId = Console.ReadLine(); 
    Console.WriteLine("Güncellenecek silah ad=");
    string DegiscekSilahAd = Console.ReadLine(); 
    Console.WriteLine("Güncellenecek silah fiyat=");
    string DegiscekSilahFiyat = Console.ReadLine();  
    Console.WriteLine("Güncellenecek silah stok=");
    string DegiscekSilahStok = Console.ReadLine();
    
    Baglantiyibaslat(); 
    string query = "UPDATE silah SET silahAd=@DegiscekSilahAd, silahFiyat=@DegiscekSilahFiyat, silahStok=@DegiscekSilahStok WHERE silahID=@DegiscekSilahId"; 
    MySqlCommand cmd = new MySqlCommand(query, conn);
    cmd.Parameters.AddWithValue("@DegiscekSilahAd", DegiscekSilahAd);  
    cmd.Parameters.AddWithValue("@DegiscekSilahFiyat", DegiscekSilahFiyat); 
    cmd.Parameters.AddWithValue("@DegiscekSilahStok", DegiscekSilahStok);
    cmd.Parameters.AddWithValue("@DegiscekSilahID", DegiscekSilahId);
    cmd.ExecuteNonQuery(); 
    Baglantiyikes(); 
	Console.WriteLine("Silah güncelleme başarılı\n Devam etmek için rastgele tuşa basınız");
	Console.ReadKey();
	Console.Clear();
    }
	
	public void SilahAlma(string silahID, int adet)
    {
      if (adet <= 0)
    {
        Console.WriteLine("Lütfen geçerli bir adet giriniz.");
        return;
    }
      
      Baglantiyibaslat();

    // Silah stok kontrolü
    string query = "SELECT silahStok FROM silah WHERE silahID = @silahID";
    MySqlCommand cmd = new MySqlCommand(query, conn);
    cmd.Parameters.AddWithValue("@silahID", silahID);
    int silahStok = Convert.ToInt32(cmd.ExecuteScalar());

    if (silahStok >= adet)
    {
        // Stok güncelleme
        silahStok -= adet;
        string updateQuery = "UPDATE silah SET silahStok = @silahStok WHERE silahID = @silahID";
        MySqlCommand updateCmd = new MySqlCommand(updateQuery, conn);
        updateCmd.Parameters.AddWithValue("@silahStok", silahStok);
        updateCmd.Parameters.AddWithValue("@silahID", silahID);
        updateCmd.ExecuteNonQuery();

        Console.WriteLine(adet + " silah alındı.");


        
        Console.WriteLine("Silah başarıyla satın alındı\nDevam etmek için rastgele tuşa basınız:");
        Console.ReadKey();
        Console.Clear();
    }
    
    else if (silahStok == 0)
    {
        Console.WriteLine("Üzgünüz, bu mermiden stokta kalmamıştır.");
    }
    else
    {
        Console.WriteLine("Stokta yeterli silah bulunmamaktadır.");
    }

    Baglantiyikes();
    } 
}

