/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author yashp
 */
public class mail {
    
    static boolean send(String from,String password,String to,String msg)
    {
        String host="smtp.gmail.com";
        String port="465";
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable","true");
        p.put("mail.smtp.host", host);
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.user", from);
        p.put("mail.smtp.password", password);
        p.put("mail.smtp.port", port);
        p.put("mail.smtp.socketFactory.port", port);
        p.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        p.put("mail.smtp.socketFactory.fallback", "false");
        Session session = Session.getDefaultInstance(p,null);
        session.setDebug(true);
        MimeMessage mime = new MimeMessage(session);
        InternetAddress interto = new InternetAddress();
        try {
            mime.setFrom(new InternetAddress(from));
            interto = new InternetAddress(to);
            mime.addRecipient(Message.RecipientType.TO, interto);
            mime.setSubject("Forgot Password!");
            mime.setText(msg);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, from, password);
            transport.sendMessage(mime, mime.getAllRecipients());
            transport.close();
            
        } catch (Exception ex) {
            Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }
}
