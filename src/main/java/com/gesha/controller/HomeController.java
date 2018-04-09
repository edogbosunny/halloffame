package com.gesha.controller;

import com.gesha.dao.FormDao;
import com.gesha.model.FormData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by Sys_Admin on 4/5/2018.
 */

@Controller
public class HomeController {

    private Path path;

    @Autowired
    private FormDao formDao;

    @RequestMapping("/")
    public String home() {
        return "cards";
    }

    @RequestMapping("/cardslist")
    public String getAllCards(Model model) {
        List<FormData> formcard = formDao.getAllFormData();
        model.addAttribute("formcard", formcard);

        return "cardslist";
    }


    @RequestMapping("/form")
    public String uploadForm(Model model) {
        FormData formdata = new FormData();

        model.addAttribute("formdata", formdata);
        return "uploadform";
    }

    @RequestMapping(value = "/form", method = RequestMethod.POST)
    public String postUploadForm(@ModelAttribute("formdata") FormData formdata, HttpServletRequest request) {
        formDao.addForm(formdata);

        MultipartFile productImage = formdata.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "WEB-INF/resources/img/" + formdata.getFormId() + ".jpg");

        System.out.println(path);

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed", e);
            }
        }

        return "redirect:/thankyou";
    }



    @RequestMapping("/thankyou")
    public String thankYou() {
        return "Thankyou";
    }

}


