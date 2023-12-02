package cm.stu.bean;

public class Person {
    //`userAccount``userName``userGender``userBirthday``userIdCard``userPassword``userIdentify``userOtherName`
    private String userAccount;
    private String userName;
    private String userId;
    private String userPassword;
    private  int userIdentify;


    public Person(String userAccount, String userName, String userGender, String userBirthday, String userId, String userPassword, int userIdentify, String userOtherName) {
        this.userAccount = userAccount;
        this.userName = userName;

        this.userId = userId;
        this.userPassword = userPassword;
        this.userIdentify = userIdentify;
    }


    public Person() {

    }

    public Person(String userAccount, String userPwd) {
        this.userPassword = userPwd;
        this.userAccount = userAccount;
    }
    public Person(String userAccount, String userPwd,String userId,Integer userIdentify,String userName){
        this.userPassword = userPwd;
        this.userAccount = userAccount;
        this.userName=userName;
        this.userId=userId;
        this.userIdentify=userIdentify;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getUserIdCard() {
        return userId;
    }

    public void setUserIdCard(String userIdCard) {
        this.userId = userId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserIdentify() {
        return userIdentify;
    }

    public void setUserIdentify(int userIdentify) {
        this.userIdentify = userIdentify;
    }


    @Override
    public String toString() {
        return "Person{" +
                "userAccount='" + userAccount + '\'' +
                ", userName='" + userName + '\'' +

                ", userPassword='" + userPassword + '\'' +
                ", userIdentify=" + userIdentify +

                '}';
    }
}
