package com.gesha.dao;

import com.gesha.model.FormData;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.omg.IOP.CodecPackage.FormatMismatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Sys_Admin on 4/5/2018.
 */

@Repository
@Transactional
public class FormDaoImpl implements FormDao {

    @Autowired
    private SessionFactory sessionFactory;


    public List<FormData> getAllFormData() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from FormData");
        List<FormData> formList = query.list();
        session.flush();
        return formList;
    }

    public FormData getFormById(int id) {
        Session session = sessionFactory.getCurrentSession();
        FormData formData = (FormData) session.get(FormData.class, id);
        session.flush();
        return formData;
    }

    public void addForm(FormData formData) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(formData);
        session.flush();
    }
}
