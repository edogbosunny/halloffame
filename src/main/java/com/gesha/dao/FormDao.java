package com.gesha.dao;

import com.gesha.model.FormData;

import java.util.List;

/**
 * Created by Sys_Admin on 4/5/2018.
 */
public interface FormDao {
    List<FormData> getAllFormData();

    FormData getFormById(int id);

    void addForm(FormData formData);

}
