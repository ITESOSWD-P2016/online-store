/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author alexabeas
 */
public class UserHandler {
    
    private String username;
    private String email;
    private String emailCon;
    private String password;
    private String passwordCon;
    
    public UserHandler(){
        username=null; 
        email=null;
        emailCon=null; 
        password=null; 
        passwordCon=null; 

    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the emailCon
     */
    public String getEmailCon() {
        return emailCon;
    }

    /**
     * @param emailCon the emailCon to set
     */
    public void setEmailCon(String emailCon) {
        this.emailCon = emailCon;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the passwordCon
     */
    public String getPasswordCon() {
        return passwordCon;
    }

    /**
     * @param passwordCon the passwordCon to set
     */
    public void setPasswordCon(String passwordCon) {
        this.passwordCon = passwordCon;
    }
    
    
}
