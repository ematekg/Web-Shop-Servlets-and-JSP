package Domain;



public class Card {
    String cardNo;
    String expireDate;
    int  cvv;

    public Card(String cardNo, String expireDate, int cvv) {
        this.cardNo = cardNo;
        this.expireDate = expireDate;
        this.cvv = cvv;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }

    public int getCvv() {
        return cvv;
    }

    public void setCvv(int cvv) {
        this.cvv = cvv;
    }
}
