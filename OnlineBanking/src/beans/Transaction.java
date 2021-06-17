package beans;

import java.sql.Date;

public class Transaction {
private String frAccno,toAccno,bank;
private Date doft;
private int amount;
public String getFrAccno() {
	return frAccno;
}
public void setFrAccno(String frAccno) {
	this.frAccno = frAccno;
}
public String getToAccno() {
	return toAccno;
}
public void setToAccno(String toAccno) {
	this.toAccno = toAccno;
}
public String getBank() {
	return bank;
}
public void setBank(String bank) {
	this.bank = bank;
}
public Date getDoft() {
	return doft;
}
public void setDoft(Date doft) {
	this.doft = doft;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}

}
