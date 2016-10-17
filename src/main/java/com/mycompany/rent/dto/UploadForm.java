/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dto;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author brennan
 */
public class UploadForm {

    private int prop_id;
    private List<MultipartFile> crunchifyFiles;

    public int getProp_id() {
        return prop_id;
    }

    public void setProp_id(int prop_id) {
        this.prop_id = prop_id;
    }
    
    public List<MultipartFile> getFiles() {
        return crunchifyFiles;
    }

    public void setFiles(List<MultipartFile> files) {
        this.crunchifyFiles = files;
    }

}
