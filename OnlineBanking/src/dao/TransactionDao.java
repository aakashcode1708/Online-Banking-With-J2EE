package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.Transaction;

public class TransactionDao {
public static int saveTransaction(Transaction trans)
{
int save=0;
try {
	Connection con=DatabaseDao.getCon();
	PreparedStatement ps=con.prepareStatement("insert into transaction(fr_accno,to_accno,bank_name,doft,amount) values(?,?,?,?,?)");
	ps.setString(1,trans.getFrAccno());
	ps.setString(2,trans.getToAccno());
	ps.setString(3,trans.getBank());
	Date date=new Date(new java.util.Date().getTime());
	ps.setDate(4,date);
	ps.setInt(5,trans.getAmount());
	save=ps.executeUpdate();
	con.close();
} catch (Exception e) {
	e.printStackTrace();
}
return save;
}

public static ArrayList<Transaction> getTransactionsByAccNo(String acc_no)
{
	ArrayList<Transaction> list=new ArrayList<>();
	try {
		Connection con=DatabaseDao.getCon();
		PreparedStatement ps=con.prepareStatement("select * from transaction where fr_accno=?");
		ps.setString(1,acc_no);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			Transaction tx=new Transaction();
			tx.setFrAccno(rs.getString("fr_accno"));
			tx.setToAccno(rs.getString("to_accno"));
			tx.setBank(rs.getString("bank_name"));
			tx.setDoft(rs.getDate("doft"));
			tx.setAmount(rs.getInt("amount"));
			list.add(tx);
		}
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

}
