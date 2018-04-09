package com.gesha.model;

import com.sun.xml.internal.ws.developer.Serialization;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Sys_Admin on 4/5/2018.
 */

@Entity
public class FormData implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public String formId;

    public String firstName;

    public String lastName;

    public String email;


    public String shortnote;

    @Transient
    private MultipartFile productImage;

    public String getFormId() {
        return formId;
    }

    public String getShortnote() {
        return shortnote;
    }

    public void setShortnote(String shortnote) {
        this.shortnote = shortnote;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public void setFormId(String formId) {
        this.formId = formId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }




}
